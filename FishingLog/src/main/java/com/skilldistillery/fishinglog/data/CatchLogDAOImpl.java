package com.skilldistillery.fishinglog.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.fishinglog.entities.CatchLog;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;


@Service
@Transactional
public class CatchLogDAOImpl implements CatchLogDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public CatchLog findById(int catchLogId) {
		// TODO Auto-generated method stub
		return em.find(CatchLog.class, catchLogId);
	}

	@Override
	public List<CatchLog> findAll() {
		String findAllCatchLogsQuery = "SELECT c FROM CatchLog c";
		List<CatchLog> allCatchLogs = em.createQuery(findAllCatchLogsQuery, CatchLog.class).getResultList();
		return allCatchLogs;
	}

}
