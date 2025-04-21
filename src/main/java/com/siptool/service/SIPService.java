package com.siptool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siptool.model.SIP;
import com.siptool.repository.SIPRepository;

@Service
public class SIPService {

	@Autowired
	private SIPRepository repository;

	public List<SIP> advancedSearch(String category, String productName, String hardwareComponents,
            String softwareComponents, String version, Double cost,
            String supplier, String manufacturer) {
return repository.advancedSearch(category, productName, hardwareComponents, softwareComponents,
                    version, cost, supplier, manufacturer);
}

	
	
    public List<String> getAllCategories() {
        return repository.findDistinctCategories();
    }

    
    public List<SIP> getSIPsByCategory(String category) {
        return repository.findByCategory(category);
    }

    
    public SIP getSIPById(Long id) {
        return repository.findById(id).orElse(null);
    }
}