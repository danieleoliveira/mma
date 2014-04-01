// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.service;

import br.com.ufpb.dsc.mma.domain.Fight;
import br.com.ufpb.dsc.mma.service.FightService;
import java.util.List;

privileged aspect FightService_Roo_Service {
    
    public abstract long FightService.countAllFights();    
    public abstract void FightService.deleteFight(Fight fight);    
    public abstract Fight FightService.findFight(Long id);    
    public abstract List<Fight> FightService.findAllFights();    
    public abstract List<Fight> FightService.findFightEntries(int firstResult, int maxResults);    
    public abstract void FightService.saveFight(Fight fight);    
    public abstract Fight FightService.updateFight(Fight fight);    
}
