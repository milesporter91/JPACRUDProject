package com.skilldistillery.fishinglog.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class CatchLogTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	CatchLog catchLog;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFishingLog");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		catchLog = em.find(CatchLog.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		catchLog = null;
	}

	@Test
	void test_() {
		assertNotNull(catchLog);
		assertEquals("Largemouth Bass".toLowerCase(), catchLog.getSpecies().toLowerCase());
		assertEquals("Spinner".toLowerCase(), catchLog.getBaitUsed().toLowerCase());
	}

}
