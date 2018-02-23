/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.justpurr.stratpoint.dao;

/**
 *
 * @author jaspe
 */
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
"first",
"middle",
"last"
})
public class Name {

@JsonProperty("first")
private String first;
@JsonProperty("middle")
private String middle;
@JsonProperty("last")
private String last;
@JsonIgnore
private Map<String, Object> additionalProperties = new HashMap<String, Object>();

@JsonProperty("first")
public String getFirst() {
return first;
}

@JsonProperty("first")
public void setFirst(String first) {
this.first = first;
}

@JsonProperty("middle")
public String getMiddle() {
return middle;
}

@JsonProperty("middle")
public void setMiddle(String middle) {
this.middle = middle;
}

@JsonProperty("last")
public String getLast() {
return last;
}

@JsonProperty("last")
public void setLast(String last) {
this.last = last;
}

@JsonAnyGetter
public Map<String, Object> getAdditionalProperties() {
return this.additionalProperties;
}

@JsonAnySetter
public void setAdditionalProperty(String name, Object value) {
this.additionalProperties.put(name, value);
}

}