package com.repository.usedcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.usedcar.BidModel;

@Repository
public interface BidRepository extends JpaRepository<BidModel,Integer>{

	@Query(value="select * from bid_model where dealer_dealer_id=?1 and used_car_used_car_id=?2",nativeQuery = true)
	public BidModel findByDealerIdAndCarId(int dealerId,int carId);
	
	@Query(value="select * from bid_model where used_car_used_car_id=?1 and bid_status!='rejected-dealer' and bid_status!='rejected-admin' order by bid_value desc limit 5",nativeQuery = true)
	public List<BidModel> findBidValue(int usedCarId);
	
	@Query(value="select * from bid_model where used_car_used_car_id=?1",nativeQuery = true)
	public List<BidModel> findByUsedCarId(int usedCarId);
	
	@Query(value="select * from bid_model where used_car_used_car_id=?1 and bid_status='rejected-dealer' or bid_status='rejected-admin' limit 5",nativeQuery = true)
	public List<BidModel> findByBidStatus(int usedCarId);
	
	@Modifying
	@Transactional
	@Query(value = "delete from bid_model where used_car_used_car_id=?1",nativeQuery = true)
	public void deleteBId(int usedCarId);
}
