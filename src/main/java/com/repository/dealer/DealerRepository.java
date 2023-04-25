package com.repository.dealer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.dealer.DealerModel;

@Repository
public interface DealerRepository extends JpaRepository<DealerModel, Integer> {

	public DealerModel findByDealerEmailAndDealerPassword(String dealerEmail,String dealerPassword);
	
	@Query(value = "select * from dealer_model limit ?1,?2",nativeQuery = true)
	public List<DealerModel> getAllDealers(int offset,int noOfRecords);
	
	@Query(value = "select count(*) from dealer_model",nativeQuery = true)
	public int getTotalDealer();
	
	public DealerModel getDealerByDealerEmail(String email);
}
