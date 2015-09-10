<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<%--------------------------------------------------------------------------------------------------------------
 Page Name 	: Back office index
 Page Desc. : Back office index page
 Page No. 	: 00
 Author 	: David Sun
---------------------------------------------------------------------------------------------------------------%>

<tag:template activeMenu="41">

	<h1 class="page-header">Promotions</h1>

       <div class="row placeholders">
         <div class="col-xs-6 col-sm-3 placeholder">
           <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
           <h4>Label</h4>
           <span class="text-muted">Something else</span>
         </div>
         <div class="col-xs-6 col-sm-3 placeholder">
           <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
           <h4>Label</h4>
           <span class="text-muted">Something else</span>
         </div>
         <div class="col-xs-6 col-sm-3 placeholder">
           <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
           <h4>Label</h4>
           <span class="text-muted">Something else</span>
         </div>
         <div class="col-xs-6 col-sm-3 placeholder">
           <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
           <h4>Label</h4>
           <span class="text-muted">Something else</span>
         </div>
       </div>

<h3>Dropdowns and multi select</h3>
		<form class="form-horizontal">
		  <div class="form-group">
			<label for="inputEmail3" class="control-label">Email <span class="icon icon-required"> required</span></label>
		    <input type="email" class="form-control" id="inputEmail3" placeholder="Email"> 
		    <div class="description">Default width input of a required field</div>
		  </div>
		  <div class="form-group">
			<label for="inputEmail3" class="control-label">Right icon</label>
		    <input type="text" class="form-control" id="inputEmail3" placeholder="Email"> <span class="icon icon-help">help</span>
		  </div>
		  <div class="form-group">
			<label for="inputEmail3" class="control-label">Long field</label>
		    <input type="text" class="form-control long-field" id="inputEmail3" placeholder="long field">
		  </div>
		  <div class="form-group">
			<label for="inputEmail3" class="control-label">Short field</label>
		    <input type="text" class="form-control short-field" id="inputEmail3" placeholder="short field">
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="control-label">Password</label>
		    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
		  </div>
		  <div class="form-group">
		  		<label for="inputPassword3" class="control-label">Auto field</label>
			  <select class="form-control auto-field">
	               <option>Select</option>
	               <option>Option 1</option>
	               <option>Option 2</option>
	               <optgroup label="Group 1">
	                   <option>Option one</option>
	                   <option>Option two</option>
	               </optgroup>
	               <option>Option 3</option>
	               <option>Option 4</option>
	           </select>
           </div>
           <div class="form-group">
		    <label for="inputPassword3" class="control-label">Full field</label>
		    <input type="text" class="form-control full-field" id="inputPassword3" placeholder="full field">
		  </div>
		  <div class="form-group">
			<label for="inputEmail3" class="control-label">Input groups</label>
		    <div class="input-group">
		      <input type="text" class="form-control" placeholder="Search for...">
		      <span class="input-group-btn">
		        <button class="btn btn-default btn-sm" type="button">action</button>
		      </span>
		    </div><!-- /input-group -->
		  </div>
		  <div class="form-group">
		  	<label for="inputEmail3" class="control-label">Horizental Radios</label>
		  	<label class="radio-inline">
			  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> Y
			</label>
			<label class="radio-inline">
			  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> N
			</label>
		  </div>
	<h3>Checkboxes</h3>
		  <div class="form-group">
		    <label for="inputPassword3" class="control-label">Checkboxes</label>
		  	<div class="checkbox">
                <input class="checkbox" type="checkbox" name="cbOne" id="cbOne">
                <label for="cbOne">Receive email</label>
            </div>
            <div class="checkbox">
                <input class="checkbox" type="checkbox" name="cbTwo" id="cbTwo">
                <label for="cbTwo">Receive push notification</label>
            </div>
            <div class="checkbox">
                <input class="checkbox" type="checkbox" name="cbThree" id="cbThree">
                <label for="cbThree">Receive in-app notification</label>
            </div>
		  </div>
	<h3>Dropdowns and multi select</h3>
		  <div class="form-group">
		    <label for="inputPassword3" class="control-label">Radio buttons</label>
		  	<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
			    Option one is this and that&mdash;be sure to include why it's great
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
			    Option two can be something else and selecting it will deselect option one
			  </label>
			</div>
			<div class="radio">
			  <label>
			    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
			    Option three is disabled
			  </label>
			</div>
		  </div>
		  <div class="form-group">
		  		<label for="inputPassword3" class="control-label">Radio buttons</label>
			  <select class="form-control">
	               <option>Select</option>
	               <option>Option 1</option>
	               <option>Option 2</option>
	               <optgroup label="Group 1">
	                   <option>Option one</option>
	                   <option>Option two</option>
	               </optgroup>
	               <option>Option 3</option>
	               <option>Option 4</option>
	           </select>
           </div>
           <div class="form-group">
           		<label for="inputPassword3" class="control-label">Radio buttons</label>
           		<select class="form-control" size="4" multiple="multiple">
                    <option>option one</option>
                    <option>option two</option>
                    <option>option three</option>
                    <option>option four</option>
                    <option>option five</option>
                    <option>option six</option>
                </select>
           	
           </div>
           <div class="form-group">
           		<label for="inputPassword3" class="control-label">Radio buttons</label>
           		<textarea class="form-control" placeholder="Your comment here..."></textarea>
           </div>
		  <div class="form-group">
		    <button type="button" class="btn btn-sm btn-default">Sign in</button>
		    <button type="button" class="btn btn-sm btn-primary">Sign in</button>
		    <button type="button" class="btn btn-sm btn-danger">Sign in</button>
		    <button type="button" class="btn btn-default btn-lg ">Save</button>
		    <button type="button" class="btn btn-default">Save</button>
		    <button type="button" class="btn btn-default btn-sm ">Save</button>
		    <button type="button" class="btn btn-default btn-xs ">Save</button>
		    <button type="button" class="btn btn-link btn-sm ">Cancel</button>
		  </div>
		</form>


       <h2 class="sub-header">Section title</h2>
       <div class="table-responsive">
         <table class="table table-striped">
           <thead>
             <tr>
               <th>#</th>
               <th>Header</th>
               <th>Header</th>
               <th>Header</th>
               <th>Header</th>
             </tr>
           </thead>
           <tbody>
             <tr>
               <td>1,001</td>
               <td>Lorem</td>
               <td>ipsum</td>
               <td>dolor</td>
               <td>sit</td>
             </tr>
             <tr>
               <td>1,002</td>
               <td>amet</td>
               <td>consectetur</td>
               <td>adipiscing</td>
               <td>elit</td>
             </tr>
             <tr>
               <td>1,003</td>
               <td>Integer</td>
               <td>nec</td>
               <td>odio</td>
               <td>Praesent</td>
             </tr>
             <tr>
               <td>1,003</td>
               <td>libero</td>
               <td>Sed</td>
               <td>cursus</td>
               <td>ante</td>
             </tr>
             <tr>
               <td>1,004</td>
               <td>dapibus</td>
               <td>diam</td>
               <td>Sed</td>
               <td>nisi</td>
             </tr>
             <tr>
               <td>1,005</td>
               <td>Nulla</td>
               <td>quis</td>
               <td>sem</td>
               <td>at</td>
             </tr>
             <tr>
               <td>1,006</td>
               <td>nibh</td>
               <td>elementum</td>
               <td>imperdiet</td>
               <td>Duis</td>
             </tr>
             <tr>
               <td>1,007</td>
               <td>sagittis</td>
               <td>ipsum</td>
               <td>Praesent</td>
               <td>mauris</td>
             </tr>
             <tr>
               <td>1,008</td>
               <td>Fusce</td>
               <td>nec</td>
               <td>tellus</td>
               <td>sed</td>
             </tr>
             <tr>
               <td>1,009</td>
               <td>augue</td>
               <td>semper</td>
               <td>porta</td>
               <td>Mauris</td>
             </tr>
             <tr>
               <td>1,010</td>
               <td>massa</td>
               <td>Vestibulum</td>
               <td>lacinia</td>
               <td>arcu</td>
             </tr>
             <tr>
               <td>1,011</td>
               <td>eget</td>
               <td>nulla</td>
               <td>Class</td>
               <td>aptent</td>
             </tr>
             <tr>
               <td>1,012</td>
               <td>taciti</td>
               <td>sociosqu</td>
               <td>ad</td>
               <td>litora</td>
             </tr>
             <tr>
               <td>1,013</td>
               <td>torquent</td>
               <td>per</td>
               <td>conubia</td>
               <td>nostra</td>
             </tr>
             <tr>
               <td>1,014</td>
               <td>per</td>
               <td>inceptos</td>
               <td>himenaeos</td>
               <td>Curabitur</td>
             </tr>
             <tr>
               <td>1,015</td>
               <td>sodales</td>
               <td>ligula</td>
               <td>in</td>
               <td>libero</td>
             </tr>
           </tbody>
         </table>
       </div>

</tag:template>