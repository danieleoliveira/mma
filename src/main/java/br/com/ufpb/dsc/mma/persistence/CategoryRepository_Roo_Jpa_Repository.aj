// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.persistence;

import br.com.ufpb.dsc.mma.domain.Category;
import br.com.ufpb.dsc.mma.persistence.CategoryRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect CategoryRepository_Roo_Jpa_Repository {
    
    declare parents: CategoryRepository extends JpaRepository<Category, Long>;
    
    declare parents: CategoryRepository extends JpaSpecificationExecutor<Category>;
    
    declare @type: CategoryRepository: @Repository;
    
}
