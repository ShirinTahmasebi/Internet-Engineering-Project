<!DOCTYPE html>
<%@page import="model.Dao"%>
<%@page import="model.Project"%>
<html>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/table_style.css">
<link href="css/bootstrap.min.css" rel="stylesheet">   
<script src="js/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
    <%@ page 
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>
<body style= " text-align: justify; text-justify: inter-word;">
	<%@ include file="menu.jsp" %> 

	<div class = "container" dir="rtl">


    <hr>

     <div class = "row" >

      <a href="edit_profile.jsp" class="btn  editProfileBtn btn-block" role="button">ویرایش پروفایل</a>
   
    </div>
		<hr>
    <p style = "font-size:30px;">اطلاعات شخصی:</p>
    <hr>

		<div class = "row" >
			<div class = "col-md-9 col-sm-9 col-xs-9">
				<%if (session.getAttribute(Tag.USER)!= null) out.println(((User)session.getAttribute(Tag.USER)).getUserName());
					else out.println("نا مشخص");%>
			</div>
			<div class = "col-md-3 col-sm-3 col-xs-3">نام و نام خانوادگی:</div>
		</div>

		<hr>

		<div class = "row" >
			<div class = "col-md-9 col-sm-9 col-xs-9">
				<%if (session.getAttribute(Tag.USER)!= null && (((User)session.getAttribute(Tag.USER)).getEmail() != null)) out.println(((User)session.getAttribute(Tag.USER)).getEmail());
					else out.println("نا مشخص");%>
			</div>
			<div class = "col-md-3 col-sm-3 col-xs-3">آدرس ایمیل:</div>
		</div>

		<hr>

		<div class = "row" >
			<div class = "col-md-9 col-sm-9 col-xs-9">
				<%if (session.getAttribute(Tag.USER)!= null) out.println(Dao.userDao.getGenderString(((User)session.getAttribute(Tag.USER)).getGender()));
					else out.println("نا مشخص");%>
			</div>
			<div class = "col-md-3 col-sm-3 col-xs-3">جنسیت:</div>
		</div>

		<hr>

		<div class = "row" >
			<div class = "col-md-9 col-sm-9 col-xs-9">
				<%if (session.getAttribute(Tag.USER)!= null && (((User)session.getAttribute(Tag.USER)).getCity() != null)) out.println(((User)session.getAttribute(Tag.USER)).getCity());
					else out.println("نا مشخص");%>
			</div>
			<div class = "col-md-3 col-sm-3 col-xs-3">شهر:</div>
		</div>

		<hr>
	
		<div class = "row" >
			<div class = "col-md-9 col-sm-9 col-xs-9">
				<%if (session.getAttribute(Tag.USER)!= null && (((User)session.getAttribute(Tag.USER)).getBirthDate() != null)) out.println(((User)session.getAttribute(Tag.USER)).getBirthDate());
					else out.println("نا مشخص");%>
			</div>
			<div class = "col-md-3 col-sm-3 col-xs-3">تاریخ تولد:</div>
		</div>

      <hr>

    <div class = "row" >
      <a href="creat_new_project.jsp" class="btn btn-info col-md-2 col-sm-2 col-xs-2" role="button">ایجاد شرکت جدید</a>
      <div class = "col-md-7 col-sm-7 col-xs-7"></div>
      <div class = "col-md-3 col-sm-3 col-xs-3"><p style = "font-size:30px;">شرکت های ثبت شده:</p></div>
    </div>
  
    <div style="margin:20px auto" class= "table-body container">  
      <div class="table-responsive">
      <table id="companyTable"class="table hover" collapsing="0" width="100%" >
            <thead>  
                <tr >  
                  <th style="text-align:right;">نام&nbsp;شرکت</th>  
                  <th style="text-align:right;">آدرس وبگاه</th>  
                 <th style="text-align:right;">محل شرکت</th>  
                  <th style="text-align:right;"></th>  
                </tr>  
            </thead>  
            <tbody>  
                <tr>  
                  <td>عمید رایانه شریف</td>  
                  <td>arsh.ir</td>  
                  <td>جنب مترو شریف</td>  
                  <td><a href="user_profile.jsp" class="btn btn-default" role="button">ثبت آگهی استخدام برای شرکت</a></td>
                </tr> 

<tr>  
                  <td>عمید رایانه شریف</td>  
                  <td>arsh.ir</td>  
                  <td>جنب مترو شریف</td>  
                  <td><a href="user_profile.jsp" class="btn btn-default" role="button">ثبت آگهی استخدام برای شرکت</a></td>
                </tr> 

                 
              
            </tbody>  
          </table>  
      </div>
  </div>
    <hr>

    <div class = "row" >
      <a href="creat_new_project.jsp" class="btn btn-info col-md-2 col-sm-2 col-xs-2" role="button">ایجاد پروژه جدید</a>
      <div class = "col-md-7 col-sm-7 col-xs-7"></div>
      <div class = "col-md-3 col-sm-3 col-xs-3"><p style = "font-size:30px;">پروژه های ثبت شده:</p></div>
    </div>
  
    <div style="margin:20px auto" class= "table-body container">  
      <div class="table-responsive">
      <table id="projctsTable"class="table hover" collapsing="0" width="100%" >
            <thead>  
                <tr >  
                  <th style="text-align:right;">نام&nbsp;پروژه</th>  
                  <th style="text-align:right;">کارفرما</th>  
                  <th style="text-align:right;">مهارت&nbsp;های&nbsp;مورد&nbsp;نیاز</th>  
                  <th style="text-align:right;">پایان</th>  
                  <th style="display:none;"></th>  
                </tr>  
            </thead>  
            <tbody>
            <%if(session.getAttribute(Tag.USER)!= null)
            	for(Project project : ((User)session.getAttribute(Tag.USER)).getCreatedProject())
            	{
            		out.println("<tr>");
            		out.println("<td>" + ((project.getProjectName()!= null)? project.getProjectName():"نامشخص") + "</td>");
            		out.println("<td>" + ((project.getAdminName()!= null)? project.getAdminName():"نامشخص") +  "</td>");
            		out.println("<td>" + ((project.getNeededSkills()!= null)? project.getNeededSkills():"نامشخص") + "</td>");
            		out.println("<td>" + ((project.getDeadline()!= null)? project.getDeadline():"نامشخص")+ "</td>");
            		out.println("<td style='display:none;'>" + ((project.getProjectId()!= null)? project.getProjectId():"نامشخص")+ "</td>");
            		out.println("</tr>");
            		
            	}
            %>  
              
            </tbody>  
          </table>  
      </div>
  </div>



  <hr>

    <div class = "row" >
      <div class = "col-md-9 col-sm-9 col-xs-9"></div>
      <div class = "col-md-3 col-sm-3 col-xs-3"><p style = "font-size:30px;">پیشنهاد های ثبت شده:</p></div>
    </div>
  
    <div style="margin:20px auto" class= "table-body container">  
      <div class="table-responsive">
      <table id="myTable"class="table hover" collapsing="0" width="100%" >
            <thead>  
                <tr >  
                  <th style="text-align:right;">نام&nbsp;کارجو</th>  
                  <th style="text-align:right;">مبلغ</th>  
                  <th style="text-align:right;">زمان&nbsp;انجام</th>  
                  <th style="text-align:right;">توضیحات</th>  
                </tr>  
            </thead>  
            <tbody>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
                <tr>  
                  <td>شیرین طهماسبی</td>  
                  <td>دویست میلیون ریال</td>  
                  <td>تا پایان آذر 95</td>  
                  <td>انجام با بهترین کیفیت</td> 
                </tr>  
            </tbody>  
          </table>  
      </div>
  </div>


    <hr>

    <div class = "row" >
      <div class = "col-md-9 col-sm-9 col-xs-9"></div>
      <div class = "col-md-3 col-sm-3 col-xs-3"><p style = "font-size:30px;">اطلاعات رزومه:</p></div>
    </div>
    
    <hr>

    <div class = "row" >
      <div class = "col-md-9 col-sm-9 col-xs-9">این قسمت برای توضیحاتیست که خود کاربر میخواهد ارائه دهد. برای مثال اگر مقام یا جایگاه خاصی را در مسابقه یا المپیاد کسب کرده است. یا اگر مایل به ذکر مدرک تحصیلی و دانشگاه خود میباشد و ...</div>
      <div class = "col-md-3 col-sm-3 col-xs-3">توضیحات:</div>
    </div>
    <hr>

    <div class = "row" >
      <div class = "col-md-9 col-sm-9 col-xs-9"></div>
      <div class = "col-md-3 col-sm-3 col-xs-3">مهارت های شما:</div>
    </div>


  
    <div style="margin:20px auto" class= "table-body container">  
      <div class="table-responsive">
      <table id="myTable"class="table hover" collapsing="0" width="100%" >
            <thead>  
                <tr >  
                  <th style="text-align:right;">عنوان&nbsp;مهارت</th>  
                  <th style="text-align:right;">میزان تسلط </th>   
                  <th style="text-align:right;">توضیحات</th>  
                </tr>  
            </thead>  
            <tbody>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr> 
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr> 
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr> 
               <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr> 
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr> 
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>  
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>
                <tr>  
                  <td>برنامه نویسی اندروید</td>  
                  <td>متوسط</td>  
                  <td>مدرک مجتمع فنی تابستان سال 94</td>  
                </tr>
            </tbody>  
          </table>  
      </div>
  </div>

</div>



 
<script type='text/javascript'>

$(document).ready(function (){

	
 	var table = document.getElementById("projctsTable");
 	var tbody = table.getElementsByTagName("tbody")[0];
 	tbody.onclick = function (e) {
        
        e = e || window.event;
   		var data = [];
     	var target = e.srcElement || e.target;
     	while (target && target.nodeName !== "TR") {
        	target = target.parentNode;
     	}
     	var cell4 = "";
     	if (target) {
        	var cells = target.getElementsByTagName("td");
         	for (var i = 0; i < cells.length; i++) {
            	data.push(cells[i].innerHTML);
         	}
         	cell4 = cells[4].innerHTML; 
         	//alert(cells[4].innerHTML + "");
     	}
     	window.location.href = "project_details.jsp?projectId=" + cell4;

	}; 
});
 


//$(document).ready(function (){


////     $('#projctsTable').on( 'click', 'tbody tr', function () {
     
//      var table = document.getElementById("projctsTable");
//      var tbody = table.getElementsByTagName("tbody")[0];
//      tbody.onclick = function (e) {
//          e = e || window.event;
//          var data = [];
//          var target = e.srcElement || e.target;
//          while (target && target.nodeName !== "TR") {
//              target = target.parentNode;
//          }
//          if (target) {
//              var cells = target.getElementsByTagName("td");
//              for (var i = 0; i < cells.length; i++) {
//                  data.push(cells[i].innerHTML);
//              }
//          }
//          //alert(data);
//          window.location.href = "project_details.jsp?projectId=" + cell[4] ; 
//      };
     
//// } );
//});




//      	var form = $('<form></form>');

//         form.attr("method", "post");
//         form.attr("action", "project_details.jsp");

//             var field = $('<input></input>');

//             field.attr("projectId", cell[4]);
//             form.append(field);
            
//         // The form needs to be a part of the document in
//         // order for us to be able to submit it.
//         $(document.body).append(form);
//         form.submit();
     	//window.location.href = "?projectNo=" + cell[4];

</script>

</body>
</html>
