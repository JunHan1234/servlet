package ch06.ex01;

import java.time.LocalDate;

public record User(int userId, String username, LocalDate regDate) {
	public String getUsername() {
		return this.username;
	}
}
