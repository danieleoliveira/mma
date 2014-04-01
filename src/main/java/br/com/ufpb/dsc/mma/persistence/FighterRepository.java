package br.com.ufpb.dsc.mma.persistence;

import br.com.ufpb.dsc.mma.domain.Fighter;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Fighter.class)
public interface FighterRepository {
}
