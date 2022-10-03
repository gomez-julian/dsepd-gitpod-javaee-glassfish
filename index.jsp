<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.BufferedWriter" %>
<%@page import="java.io.FileWriter" %>
<%@page import="java.util.Date" %>
<%
/** Log POSTs at / to a file **/
if ("POST".equalsIgnoreCase(request.getMethod())) {
        BufferedWriter writer = new BufferedWriter(new FileWriter("/usr/local/glassfish4/glassfish/domains/domain1/logs/sample-app.log", true)); // default log path for Docker preconfigured GlassFish containers
	// Read and log request body
	java.util.Scanner scanner = new java.util.Scanner(request.getInputStream()).useDelimiter("\\A");
	if(scanner.hasNext()) {
		String reqBody = scanner.next();
        	writer.write(String.format("%s Received message: %s.\n", (new Date()).toString(), reqBody));
	}
	writer.flush();
        writer.close();
} else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!--
    Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.

    Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

        http://aws.Amazon/apache2.0/

    or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
  -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Welcome</title>
  <style>
  body {
    color: #ffffff;
    background-color: #c7c7c7;
    font-family: Arial, sans-serif;
    font-size:14px;
    -moz-transition-property: text-shadow;
    -moz-transition-duration: 4s;
    -webkit-transition-property: text-shadow;
    -webkit-transition-duration: 4s;
    text-shadow: none;
  }
  body.blurry {
    -moz-transition-property: text-shadow;
    -moz-transition-duration: 4s;
    -webkit-transition-property: text-shadow;
    -webkit-transition-duration: 4s;
    text-shadow: #fff 0px 0px 25px;
  }
  a {
    color: #0188cc;
  }
  .textColumn, .linksColumn {
    padding: 2em;
  }
  .textColumn {
    position: absolute;
    top: 0px;
    right: 50%;
    bottom: 0px;
    left: 0px;

    text-align: right;
    padding-top: 11em;
    background-color: #6699ff;
    
  }
  .textColumn p {
    width: 75%;
    float:right;
  }
  .linksColumn {
    position: absolute;
    top:0px;
    right: 0px;
    bottom: 0px;
    left: 50%;

    background-color: #c7c7c7;
  }

  h1 {
    font-size: 500%;
    font-weight: normal;
    margin-bottom: 0em;
  }
  h2 {
    font-size: 200%;
    font-weight: normal;
    margin-bottom: 0em;
  }
  ul {
    padding-left: 1em;
    margin: 0px;
  }
  li {
    margin: 1em 0em;
  }

  </style>
</head>
<body id="sample">
  <div class="textColumn">
    <h1>Congratulations</h1>
    <p>Your first AWS Elastic Beanstalk Application is now running on your own dedicated environment in the AWS Cloud</p>
  </div>
  
  <div class="linksColumn"> 
    <h2>What's Next?</h2>
    <ul>
      <li><a href="http://aws.amazon.com/elasticbeanstalk/ug/">Learn how to build, deploy and manage your own applications using AWS Elastic Beanstalk</a></li>
      <li><a href="http://aws.amazon.com/elasticbeanstalk/concepts/">AWS Elastic Beanstalk concepts</a></li>
      <li><a href="http://aws.amazon.com/elasticbeanstalk/deployment/">Learn how to create new application versions</a></li>
      <li><a href="http://aws.amazon.com/elasticbeanstalk/environments/">Learn how to manage your application environments</a></li>
    </ul>
    <h2>GlassFish Samples</h2>
    <ul>
      <li><a href="https://glassfish-samples.java.net">Explore community provided sample applications for GlassFish</a></li>
    </ul>
  </div>
</script>
</body>
</html>
<% } %>
