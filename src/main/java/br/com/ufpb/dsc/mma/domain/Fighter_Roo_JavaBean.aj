// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.domain;

import br.com.ufpb.dsc.mma.domain.Category;
import br.com.ufpb.dsc.mma.domain.Fight;
import br.com.ufpb.dsc.mma.domain.Fighter;
import java.util.Set;

privileged aspect Fighter_Roo_JavaBean {
    
    public String Fighter.getName() {
        return this.name;
    }
    
    public void Fighter.setName(String name) {
        this.name = name;
    }
    
    public int Fighter.getAge() {
        return this.age;
    }
    
    public void Fighter.setAge(int age) {
        this.age = age;
    }
    
    public float Fighter.getWeight() {
        return this.weight;
    }
    
    public void Fighter.setWeight(float weight) {
        this.weight = weight;
    }
    
    public float Fighter.getHeight() {
        return this.height;
    }
    
    public void Fighter.setHeight(float height) {
        this.height = height;
    }
    
    public Category Fighter.getCategory() {
        return this.category;
    }
    
    public void Fighter.setCategory(Category category) {
        this.category = category;
    }
    
    public Set<Fight> Fighter.getFights() {
        return this.fights;
    }
    
    public void Fighter.setFights(Set<Fight> fights) {
        this.fights = fights;
    }
    
}
