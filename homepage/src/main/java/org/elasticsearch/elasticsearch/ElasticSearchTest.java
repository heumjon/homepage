package org.elasticsearch.elasticsearch;

import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.elasticsearch.action.bulk.BulkRequestBuilder;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.search.MultiSearchResponse;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.scheduling.annotation.Scheduled;

import com.board.service.BoardService;
import com.common.command.CommandMap;
import com.menu.service.MenuService;

import static org.elasticsearch.common.xcontent.XContentFactory.*;

public class ElasticSearchTest {
	
	@Resource(name="BoardService")
    private BoardService boardService;
	
	@Resource(name="MenuService")
	private MenuService menuService;

	TransportClient client;
	
	public String search() throws UnsupportedEncodingException {
		
		@SuppressWarnings("unused")
		Logger log = Logger.getLogger(this.getClass());
		
		String resultString = "";
		try {
			
			transportClient();

			/*SearchResponse response = client.prepareSearch("twitter")
			        .setTypes("tweet")
			        .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
			        .setQuery(QueryBuilders.termQuery("multi", "message"))                 // Query
			        .setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))     // Filter
			        .setFrom(0).setSize(60).setExplain(true) //pagenation
			        .get();*/


			SearchRequestBuilder srb = client.prepareSearch("facebook")
					.setTypes("board")
					.setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
					.setQuery(QueryBuilders.termQuery("TITLE", "테스트"))
					//.setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))     // Filter
					.setFrom(0)
					.setSize(3)
					.setExplain(true);
			
			SearchRequestBuilder srb1 = client.prepareSearch("facebook")
					.setTypes("menu")
					.setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
					.setQuery(QueryBuilders.termQuery("MENU_NAME", "서비스관리"))
					//.setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))     // Filter
					.setFrom(0)
					.setSize(3)
					.setExplain(true);

			MultiSearchResponse sr = client.prepareMultiSearch()
					.add(srb)
					.add(srb1)
					.get();

			for (MultiSearchResponse.Item item : sr.getResponses()) {

				SearchResponse response = item.getResponse();
				resultString = response.toString();
				
			}


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			client.close();
		}
		
		return resultString;
		
	}
	
	
	// ElasticSearch Client Connection (호출)
	@SuppressWarnings("resource")
	public void transportClient() throws UnknownHostException {
		Settings settings = Settings.builder()
				.put("client.transport.sniff", true)
				.put("cluster.name", "elasticsearch")		//	elasticsearch
				.build();
		
		client = new PreBuiltTransportClient(settings)
		        .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("127.0.0.1"), 9300));
	}

	
	// ElasticSearch Index (색인)
	@Scheduled(cron="0 0 */1 * * *")
	public void insertIndex() throws Exception {
		
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("스케줄 실행 : " + dateFormat.format(calendar.getTime()));
		
		CommandMap commandMap = new CommandMap();
		
		List<Map<String, Object>> boardList = boardService.selectBoardList(commandMap);
		
		transportClient();
		
		BulkRequestBuilder bulkRequest = client.prepareBulk();
		
		for(Map<String, Object> board : boardList) {
			
			int boardIdx = (Integer) board.get("BOARD_IDX");
			
			
			bulkRequest.add(client.prepareIndex("facebook", "board", boardIdx+"")
					.setSource(jsonBuilder()
							.startObject()
							.field("TITLE", (String) board.get("TITLE"))
							.field("CONTENTS", (String) board.get("CONTENTS"))
							.field("CREATE_DATE", (String) board.get("CREATE_DATE"))
							.field("CREATE_ID", (String) board.get("CREATE_ID"))
							.endObject()
							)
					);
		}
		
		List<Map<String, Object>> menuList = menuService.selectMenuList(commandMap);
		for(Map<String, Object> menu : menuList) {
			
			bulkRequest.add(client.prepareIndex("facebook", "menu", (String) menu.get("MENU_ID"))
					.setSource(jsonBuilder()
							.startObject()
							.field("DOCID", (String) menu.get("MENU_ID"))
							.field("MENU_NAME", (String) menu.get("MENU_NAME"))
							.field("PROGRAM_NAME", (String) menu.get("PROGRAM_NAME"))
							.field("MENU_COMMENT", (String) menu.get("MENU_COMMENT"))
							.field("CREATE_DATE", (String) menu.get("CREATE_DATE"))
							.endObject()
							)
					);
		}
		

		BulkResponse bulkResponse = bulkRequest.get();
		if (bulkResponse.hasFailures()) {
			System.out.println(bulkResponse.buildFailureMessage());
		}
		
		close();
		
		System.out.println("Request " + dateFormat.format(calendar.getTime()) );

	}
	
	public void close() {
		client.close();		
	}

}
