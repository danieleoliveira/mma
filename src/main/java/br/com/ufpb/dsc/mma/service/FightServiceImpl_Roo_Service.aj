// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.service;

import br.com.ufpb.dsc.mma.domain.Fight;
import br.com.ufpb.dsc.mma.persistence.FightRepository;
import br.com.ufpb.dsc.mma.service.FightServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FightServiceImpl_Roo_Service {
    
    declare @type: FightServiceImpl: @Service;
    
    declare @type: FightServiceImpl: @Transactional;
    
    @Autowired
    FightRepository FightServiceImpl.fightRepository;
    
    public long FightServiceImpl.countAllFights() {
        return fightRepository.count();
    }
    
    public void FightServiceImpl.deleteFight(Fight fight) {
        fightRepository.delete(fight);
    }
    
    public Fight FightServiceImpl.findFight(Long id) {
        return fightRepository.findOne(id);
    }
    
    public List<Fight> FightServiceImpl.findAllFights() {
        return fightRepository.findAll();
    }
    
    public List<Fight> FightServiceImpl.findFightEntries(int firstResult, int maxResults) {
        return fightRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void FightServiceImpl.saveFight(Fight fight) {
        fightRepository.save(fight);
    }
    
    public Fight FightServiceImpl.updateFight(Fight fight) {
        return fightRepository.save(fight);
    }
    
}
