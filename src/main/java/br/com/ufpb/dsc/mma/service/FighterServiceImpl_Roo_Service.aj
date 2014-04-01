// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.service;

import br.com.ufpb.dsc.mma.domain.Fighter;
import br.com.ufpb.dsc.mma.persistence.FighterRepository;
import br.com.ufpb.dsc.mma.service.FighterServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FighterServiceImpl_Roo_Service {
    
    declare @type: FighterServiceImpl: @Service;
    
    declare @type: FighterServiceImpl: @Transactional;
    
    @Autowired
    FighterRepository FighterServiceImpl.fighterRepository;
    
    public long FighterServiceImpl.countAllFighters() {
        return fighterRepository.count();
    }
    
    public void FighterServiceImpl.deleteFighter(Fighter fighter) {
        fighterRepository.delete(fighter);
    }
    
    public Fighter FighterServiceImpl.findFighter(Long id) {
        return fighterRepository.findOne(id);
    }
    
    public List<Fighter> FighterServiceImpl.findAllFighters() {
        return fighterRepository.findAll();
    }
    
    public List<Fighter> FighterServiceImpl.findFighterEntries(int firstResult, int maxResults) {
        return fighterRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void FighterServiceImpl.saveFighter(Fighter fighter) {
        fighterRepository.save(fighter);
    }
    
    public Fighter FighterServiceImpl.updateFighter(Fighter fighter) {
        return fighterRepository.save(fighter);
    }
    
}
