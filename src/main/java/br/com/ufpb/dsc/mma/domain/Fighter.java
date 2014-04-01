package br.com.ufpb.dsc.mma.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
@RooJson
public class Fighter {

    @NotNull
    private String name;

    @NotNull
    @Min(21L)
    private int age;

    @NotNull
    private float weight;

    private float height;

    @ManyToOne
    private Category category;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Fight> fights = new HashSet<Fight>();
}
