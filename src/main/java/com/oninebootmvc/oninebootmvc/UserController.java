package com.oninebootmvc.oninebootmvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

@Controller
public class UserController {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(value = "/cellphones", method = RequestMethod.GET)
    public ModelAndView getCell(HttpServletRequest request) {
        ModelAndView view = new ModelAndView();
        view.setViewName("cellphone");
        ResponseEntity<Cell[]> responseEntity = restTemplate.getForEntity("http://localhost:8092/cell", Cell[].class);
        System.out.println("before response cellphone method");
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

        System.out.println("after cellphone");
        return view;

    }
    @RequestMapping(value = "/addOrder", method = RequestMethod.GET)
    public String openAdd() {
        System.out.println("before openAdd");
        return "addorder";
    }

    @RequestMapping(value = "/orderSave", method = RequestMethod.POST)
    public String createOrder(@ModelAttribute Order o) {
        System.out.println("before order");
        restTemplate.postForEntity("http://localhost:8092/orders",o, Order.class);
        System.out.println("after order");
        return "homepage";
    }
    @RequestMapping(value = "/home", method=RequestMethod.GET)
    public String home(){
        System.out.println("inside home method");
        return "homepage";
    }
    @RequestMapping(value = "/userdelorder", method=RequestMethod.GET)
    public String UserDeleteOrder(){
        System.out.println("inside home method");
        return "userdelorder";
    }

    @RequestMapping(value = "/useruporder", method=RequestMethod.GET)
    public String UserUpdateOrder(){
        System.out.println("inside home method");
        return "useruporder";
    }

    @RequestMapping(value = "/electronics", method=RequestMethod.GET)
    public String electronics(){
        System.out.println("inside electronics method");
        return "electronics";
    }
   /* @RequestMapping(value = "/cellphones", method=RequestMethod.GET)
    public String cellphones(){
        System.out.println("inside electronics method");
        return "cellphone";
    }*/
    @RequestMapping(value = "/udelor", method = RequestMethod.DELETE)
    public String deleteOrder(@ModelAttribute Order o ){
        System.out.println("before delor");
        restTemplate.delete("http://localhost:8092/cell",o, Order.class);
        System.out.println("after delor");
        return "homepage";
    }
    @RequestMapping(value = "/uuporder", method = RequestMethod.PUT)
    public String updateCell(@ModelAttribute Order o) {
        System.out.println("before updateCell");
        restTemplate.put("http://localhost:8092/cell",o, Order.class);
        System.out.println("after updateCell");
        return "homepage";
    }
  /*  @RequestMapping(value = "/clothes", method=RequestMethod.GET)
    public String clothes(){
        System.out.println("inside clothes method");
        return "clothes";
    }*/
}
