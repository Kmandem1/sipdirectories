package com.siptool.repository;

import com.siptool.model.SIP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SIPRepository extends JpaRepository<SIP, Long> {
	@Query("SELECT s FROM SIP s WHERE " +
	        "(:category IS NULL OR s.category = :category) AND " +
	        "(:productName IS NULL OR LOWER(s.productName) LIKE LOWER(CONCAT('%', :productName, '%'))) AND " +
	        "(:hardwareComponents IS NULL OR LOWER(s.hardwareComponents) LIKE LOWER(CONCAT('%', :hardwareComponents, '%'))) AND " +
	        "(:softwareComponents IS NULL OR LOWER(s.softwareComponents) LIKE LOWER(CONCAT('%', :softwareComponents, '%'))) AND " +
	        "(:version IS NULL OR s.version = :version) AND " +
	        "(:cost IS NULL OR s.cost = :cost) AND " +
	        "(:supplier IS NULL OR LOWER(s.supplier) LIKE LOWER(CONCAT('%', :supplier, '%'))) AND " +
	        "(:manufacturer IS NULL OR LOWER(s.manufacturer) LIKE LOWER(CONCAT('%', :manufacturer, '%')))")
	List<SIP> advancedSearch(@Param("category") String category,
	                         @Param("productName") String productName,
	                         @Param("hardwareComponents") String hardwareComponents,
	                         @Param("softwareComponents") String softwareComponents,
	                         @Param("version") String version,
	                         @Param("cost") Double cost,
	                         @Param("supplier") String supplier,
	                         @Param("manufacturer") String manufacturer);
	
    List<SIP> findByCategoryContainingIgnoreCase(String category);
    //List<SIP> findByOperatingSystemContainingIgnoreCase(String os); // Remove if not applicable

    @Query("SELECT s.category, COUNT(s) FROM SIP s GROUP BY s.category")
    List<Object[]> countByCategory();
    
    @Query("SELECT DISTINCT s.category FROM SIP s")
    List<String> findDistinctCategories();

    List<SIP> findByCategory(String category);
}
