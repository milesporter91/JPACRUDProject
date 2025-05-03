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

	@Override
	public CatchLog addCatchLog(CatchLog catchLog) {
		em.persist(catchLog);
		return catchLog;
		
	}

	@Override
	public CatchLog updateCatchLog(int catchLogId, CatchLog catchLog) {
		
		CatchLog managedCatchLog = em.find(CatchLog.class, catchLogId);
		
		managedCatchLog.setFishermanId(catchLog.getFishermanId());
		managedCatchLog.setDateCaught(catchLog.getDateCaught());
		managedCatchLog.setTimeCaught(catchLog.getTimeCaught());
		managedCatchLog.setMoonPhase(catchLog.getMoonPhase());
		managedCatchLog.setWaterType(catchLog.getWaterType());
		managedCatchLog.setWaterTemp(catchLog.getWaterTemp());
		managedCatchLog.setSpecies(catchLog.getSpecies());
		managedCatchLog.setScientificName(catchLog.getScientificName());
		managedCatchLog.setWeightInLbs(catchLog.getWeightInLbs());
		managedCatchLog.setLengthInInches(catchLog.getLengthInInches());
		managedCatchLog.setBaitUsed(catchLog.getBaitUsed());
		managedCatchLog.setCatchAndRelease(catchLog.getCatchAndRelease());
		managedCatchLog.setLatitude(catchLog.getLatitude());
		managedCatchLog.setLongitude(catchLog.getLongitude());
		managedCatchLog.setNotes(catchLog.getNotes());
		managedCatchLog.setImageUrl(catchLog.getImageUrl());
		
		
		
		return managedCatchLog;
	}

	@Override
	public boolean deleteCatchLog(int catchLogId) {
		boolean deleted = true;
		try {
			CatchLog managedCatchLog = em.find(CatchLog.class, catchLogId);
			em.remove(managedCatchLog);
			
		} catch (Exception e) {
			deleted = false;
			e.printStackTrace();
		}
		return deleted;
		
	}

}
