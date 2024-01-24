
package board;

import java.sql.*;

import lombok.*;

@Data
public class BoardDTO {
	int id; //ID
	String title;//제목
	String writer;//작성자
	String cont;//내용
	Date regdate;//작성일
	int cnt;//조회수
}
