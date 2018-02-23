/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.justpurr.stratpoint.controllers;

/**
 *
 * @author jaspe
 */

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.justpurr.stratpoint.dao.Profile;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author john
 */
@Controller
public class DefaultController extends HttpServlet {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
//        map.put("msg", "Hello Spring 4 Web MVC!");
//        return "index";
        ObjectMapper mapper = new ObjectMapper();
        List<Profile> profileList = null;

        try {
            profileList = mapper.readValue(new URL("http://s3-ap-southeast-1.amazonaws.com/fundo/js/profiles.json"), new TypeReference<List<Profile>>() {
            });
        } catch (Exception e) {
            System.out.println("e = " + e);
        }

        request.setAttribute("profileList", profileList);

        return "homepage";

    }

//    @RequestMapping(value = "/homepage", method = RequestMethod.GET)
//    public String viewHomePage(ModelMap map, HttpServletRequest request, HttpServletResponse response) throws MalformedURLException, IOException {
//
//        ObjectMapper mapper = new ObjectMapper();
//        List<Profile> profileList = null;
//
//        try {
//            profileList = mapper.readValue(new URL("http://s3-ap-southeast-1.amazonaws.com/fundo/js/profiles.json"), new TypeReference<List<Profile>>() {
//            });
//        } catch (Exception e) {
//            System.out.println("e = " + e);
//        }
//
//        request.setAttribute("profileList", profileList);
//
//        return "homepage";
//    }
    @RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
    public String viewProfile(ModelMap map, HttpServletRequest request, HttpServletResponse response, @PathVariable String id) throws MalformedURLException, IOException {
        map.put("id", id);
        
        
        ObjectMapper mapper = new ObjectMapper();
        List<Profile> profileList = null;

        try {
            profileList = mapper.readValue(new URL("http://s3-ap-southeast-1.amazonaws.com/fundo/js/profiles.json"), new TypeReference<List<Profile>>() {});
            
             for(Profile profile : profileList) {
                if (id.equals(profile.getId())) {
                 request.setAttribute("profile", profile);;
                }
            }
        } catch (Exception e) {
            System.out.println("e = " + e);
        }
        
                

        return "profile";
    }

}
