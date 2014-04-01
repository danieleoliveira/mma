// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.domain;

import br.com.ufpb.dsc.mma.domain.Fight;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Fight_Roo_Json {
    
    public String Fight.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Fight Fight.fromJsonToFight(String json) {
        return new JSONDeserializer<Fight>().use(null, Fight.class).deserialize(json);
    }
    
    public static String Fight.toJsonArray(Collection<Fight> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Fight> Fight.fromJsonArrayToFights(String json) {
        return new JSONDeserializer<List<Fight>>().use(null, ArrayList.class).use("values", Fight.class).deserialize(json);
    }
    
}
