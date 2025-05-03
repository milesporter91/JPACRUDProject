package com.skilldistillery.fishinglog.data;

import java.util.List;

import com.skilldistillery.fishinglog.entities.CatchLog;

public interface CatchLogDAO {

	CatchLog findById(int catchLogId);
	List<CatchLog> findAll();
}
