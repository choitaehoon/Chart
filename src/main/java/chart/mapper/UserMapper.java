package chart.mapper;

import chart.dto.User;

public interface UserMapper 
{
	void insert(User user);
	User select(String userId);
}
