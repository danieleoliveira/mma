// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.service;

import br.com.ufpb.dsc.mma.domain.Fighter;
import br.com.ufpb.dsc.mma.service.FighterService;
import java.util.List;

privileged aspect FighterService_Roo_Service {
    
    public abstract long FighterService.countAllFighters();    
    public abstract void FighterService.deleteFighter(Fighter fighter);    
    public abstract Fighter FighterService.findFighter(Long id);    
    public abstract List<Fighter> FighterService.findAllFighters();    
    public abstract List<Fighter> FighterService.findFighterEntries(int firstResult, int maxResults);    
    public abstract void FighterService.saveFighter(Fighter fighter);    
    public abstract Fighter FighterService.updateFighter(Fighter fighter);    
}
