package br.com.ufpb.dsc.mma.persistence;

import br.com.ufpb.dsc.mma.domain.Category;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Category.class)
public interface CategoryRepository {
}
