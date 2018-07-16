package com.oninebootmvc.oninebootmvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

@Controller
public class CellController {

    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/cells", method = RequestMethod.GET)
    public ModelAndView getCell(HttpServletRequest request) {
        ModelAndView view = new ModelAndView();
        view.setViewName("cells");
        ResponseEntity<Cell[]> responseEntity = restTemplate.getForEntity("http://localhost:8092/cell", Cell[].class);
        System.out.println("before response cell method");
        Cell[] cell = (responseEntity.getBody());
        System.out.println("lenght of the table rows " + cell.length); //lenght of the table rows
        request.setAttribute("cell", Arrays.asList(cell)); // create list
        /*if(responseEntity.getStatusCode() == HttpStatus.OK){
            ModelAndView view = new ModelAndView();
            view.setViewName("hello");
            view.addObject(responseEntity.getBody());
            return view;
        }*/
//shows data in jsp

        System.out.println("after cell");
        return view;

    }
    @RequestMapping(value = "/addCell", method = RequestMethod.GET)
    public String openAdd() {
        System.out.println("before openAdd");
        return "addcells";
    }
    @RequestMapping(value = "/deleteCell", method = RequestMethod.GET)
    public String openDelete() {
        System.out.println("before openDelete");
        return "delete";
    }
    @RequestMapping(value = "/updateCell", method = RequestMethod.GET)
    public String openUpdate() {
        System.out.println("before update");
        return "update";
    }

    @RequestMapping(value = "/hello", method = RequestMethod.POST)
    public String createCell(@ModelAttribute Cell cell) {
        System.out.println("before hello");
restTemplate.postForEntity("http://localhost:8092/cell",cell, Cell.class);
        System.out.println("after hello");
        return "hello";
    }
    @RequestMapping(value = "/del", method = RequestMethod.DELETE)
    public String deleteCell(@ModelAttribute Cell cell) {
        System.out.println("before del");

        restTemplate.delete("http://localhost:8092/cell",cell, Cell.class);
        System.out.println("after del");
        return "hello";
    }
    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public String updateCell(@ModelAttribute Cell cell) {
        System.out.println("before updateCell");
        restTemplate.put("http://localhost:8092/cell",cell, Cell.class);
        System.out.println("after updateCell");
        return "hello";
    }
}




