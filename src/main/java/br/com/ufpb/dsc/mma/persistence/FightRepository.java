package br.com.ufpb.dsc.mma.persistence;

import br.com.ufpb.dsc.mma.domain.Fight;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Fight.class)
public interface FightRepository {
}
