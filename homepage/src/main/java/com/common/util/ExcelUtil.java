package com.common.util;

import org.apache.poi.ss.usermodel.Cell;

/**
 * @파일명 : ExcelUtil.java
 * @날짜 : 2017. 04. 18.
 * @작성자 : ChoHeumJun
 * @설명
 * 
 * 	<pre>
 * 		엑셀처리시 사용되는 유틸
 *  </pre>
 */
public class ExcelUtil {

	/**
	 * @메소드명 : getCellValue
	 * @날짜 : 2017. 04. 18.
	 * @작성자 : ChoHeumJun
	 * @설명 :
	 * 
	 *     <pre>
	 * 			엑셀의 내용을 받아온다.
	 *     </pre>
	 * 
	 * @param cell
	 * @return
	 */
	public static Object getCellValue(Cell cell) {
		if (!"".equals(StringUtil.nullString(cell))) {
			switch (cell.getCellType()) {
			case Cell.CELL_TYPE_STRING:
				String temp = cell.getRichStringCellValue().getString().toUpperCase();

				temp = temp.replace("\"", "\\\"");
				temp = temp.replaceAll("'", "\\\\u0027");

				return temp.trim();
			case Cell.CELL_TYPE_NUMERIC:
				String value = Double.toString(cell.getNumericCellValue());
				if (value.indexOf(".0") > 0) {
					value = value.replace(".0", "");
				}
				return value;
			case Cell.CELL_TYPE_BOOLEAN:
				return cell.getBooleanCellValue();
			case Cell.CELL_TYPE_FORMULA:
				return cell.getCellFormula();
			default:
				return "";
			}
		} else {
			return "";
		}
	}

}
