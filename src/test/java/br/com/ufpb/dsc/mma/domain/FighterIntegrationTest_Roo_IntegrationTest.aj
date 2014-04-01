// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.domain;

import br.com.ufpb.dsc.mma.domain.FighterDataOnDemand;
import br.com.ufpb.dsc.mma.domain.FighterIntegrationTest;
import br.com.ufpb.dsc.mma.persistence.FighterRepository;
import br.com.ufpb.dsc.mma.service.FighterService;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FighterIntegrationTest_Roo_IntegrationTest {
    
    declare @type: FighterIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: FighterIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: FighterIntegrationTest: @Transactional;
    
    @Autowired
    FighterDataOnDemand FighterIntegrationTest.dod;
    
    @Autowired
    FighterService FighterIntegrationTest.fighterService;
    
    @Autowired
    FighterRepository FighterIntegrationTest.fighterRepository;
    
    @Test
    public void FighterIntegrationTest.testCountAllFighters() {
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", dod.getRandomFighter());
        long count = fighterService.countAllFighters();
        Assert.assertTrue("Counter for 'Fighter' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void FighterIntegrationTest.testFindFighter() {
        Fighter obj = dod.getRandomFighter();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to provide an identifier", id);
        obj = fighterService.findFighter(id);
        Assert.assertNotNull("Find method for 'Fighter' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Fighter' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void FighterIntegrationTest.testFindAllFighters() {
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", dod.getRandomFighter());
        long count = fighterService.countAllFighters();
        Assert.assertTrue("Too expensive to perform a find all test for 'Fighter', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Fighter> result = fighterService.findAllFighters();
        Assert.assertNotNull("Find all method for 'Fighter' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Fighter' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void FighterIntegrationTest.testFindFighterEntries() {
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", dod.getRandomFighter());
        long count = fighterService.countAllFighters();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Fighter> result = fighterService.findFighterEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Fighter' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Fighter' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void FighterIntegrationTest.testFlush() {
        Fighter obj = dod.getRandomFighter();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to provide an identifier", id);
        obj = fighterService.findFighter(id);
        Assert.assertNotNull("Find method for 'Fighter' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyFighter(obj);
        Integer currentVersion = obj.getVersion();
        fighterRepository.flush();
        Assert.assertTrue("Version for 'Fighter' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void FighterIntegrationTest.testUpdateFighterUpdate() {
        Fighter obj = dod.getRandomFighter();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to provide an identifier", id);
        obj = fighterService.findFighter(id);
        boolean modified =  dod.modifyFighter(obj);
        Integer currentVersion = obj.getVersion();
        Fighter merged = fighterService.updateFighter(obj);
        fighterRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Fighter' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void FighterIntegrationTest.testSaveFighter() {
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", dod.getRandomFighter());
        Fighter obj = dod.getNewTransientFighter(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Fighter' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Fighter' identifier to be null", obj.getId());
        fighterService.saveFighter(obj);
        fighterRepository.flush();
        Assert.assertNotNull("Expected 'Fighter' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void FighterIntegrationTest.testDeleteFighter() {
        Fighter obj = dod.getRandomFighter();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Fighter' failed to provide an identifier", id);
        obj = fighterService.findFighter(id);
        fighterService.deleteFighter(obj);
        fighterRepository.flush();
        Assert.assertNull("Failed to remove 'Fighter' with identifier '" + id + "'", fighterService.findFighter(id));
    }
    
}
