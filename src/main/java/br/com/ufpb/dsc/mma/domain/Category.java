package br.com.ufpb.dsc.mma.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
@RooJson
public class Category {

    @NotNull
    @Size(min = 9, max = 17)
    private String name;

    @NotNull
    private float minWeight;

    @NotNull
    private float maxWeight;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Fighter> fighters = new HashSet<Fighter>();
}
