# SIPLookUp

## Overview
SIPLookUp is a web-based tool designed to help software engineers, managers, product owners, designers, and educated end-users locate Software Intensive Products (SIPs). The system extracts and summarizes the hardware and software components of these products, making it easier for users to analyze and compare different SIPs.

The platform categorizes products into different domains such as Appliances, Cars, Wearables, Apparel, and Home & Office Products, allowing users to search and filter results efficiently.

---

## Tech Stack

### Frontend:
- HTML, CSS, JavaScript – For structuring and interactivity
- Materialize CSS – For responsive UI and layout

### Backend:
- Java (API-based architecture) – For handling requests and processing data
- SQL (MySQL Database) – For storing product information and summaries

### Development & Version Control:
- Git & GitHub – For version control, collaboration, and tracking progress
- Eclipse – As the primary IDE for writing and debugging code

### Hosting:
- Tomcat – To deploy the web application

---

## Features
- Database Storage – Store and manage SIP details, including hardware/software components.
- Product Summary Generation – Extract and display summarized details for each product.
- Category Support – Enable product classification into Appliances, Cars, Wearables, Apparel, and Home & Office Products.

---

## Step-by-Step Development Process

### Phase 1: Planning & Requirements Gathering
1. Define project objectives:
   - Create a tool to find Software Intensive Products (SIPs) and retrieve summaries of their hardware and software components.
2. Identify core features:
   - Search functionality, category-based product filtering, and summary extraction.
3. Setup Git Repository:
   - Create a GitHub repository for version control.
   - Initialize the repository with git init and push the initial commit.

### Phase 2: Backend Development
#### Database Design
1. Define the SIP table with the following columns:
   - Id, Category, Product Name, Hardware Components, Software Components, Version, Cost (USD), Dependencies, Supplier, Manufacturer, Summary
2. Establish SQL database connection using Java.

#### Build Java APIs
- GET API: Fetch SIP details based on category and keywords.
- POST API: Store new SIP entries into the database.
- Summarization API: Process hardware/software details into a short summary.

### Phase 3: Frontend Development
1. Setup Project Structure in eclipse.
2. Create UI with Materialize CSS:
   - Navigation bar & search bar for product lookup.
   - Table/List View to display results.
   - Category selection dropdown for filtering.
3. *Connect Frontend to Backend using Fetch API *

### Phase 4: Testing & Deployment
- Unit Testing – Test API responses and data retrieval.
- Frontend Testing – Check UI responsiveness across devices.
- Git Push & Deploy on AWS:
  - Commit and push final version to GitHub.
  - Deploy on AWS and test live site performance.

  
SIPLookUp – A Web Tool for Software Intensive Product Analysis

SIPLookUp is a web-based platform that allows users to discover, explore, and compare Software Intensive Products (SIPs) across categories such as Appliances, Cars, Wearables, Apparel, and Home & Office products. Designed for both technical and non-technical users, it supports intelligent search, filtering, and detailed product analysis to support informed decision-making.

Live Demo:
Access the deployed application here: http://18.218.236.114:8081/
Note: Best viewed on desktop or large tablet. Admin features may require seeded login credentials.

How to Run the SIPLookUp Project Locally

Prerequisites:
- Java JDK 17 or higher
- Apache Maven
- MySQL Server (8.0 recommended)
- Apache Tomcat (optional, for manual deployment)
- Git

Clone the Repository:
git clone https://github.com/Kmandem1/sipdirectories.git
cd sipdirectories

Set Up the MySQL Database:
1. Open MySQL and create the database:
   CREATE DATABASE siplookup_db;

2. Import initial data (if provided):
   mysql -u root -p siplookup_db < siplookup_dump.sql

3. Update the application.properties file:
   spring.datasource.url=jdbc:mysql://localhost:3306/siplookup_db
   spring.datasource.username=your_username
   spring.datasource.password=your_password
   spring.jpa.hibernate.ddl-auto=update

Build the Project:
mvn clean install

Run the Project:

Option 1: Run with Embedded Tomcat:
mvn spring-boot:run

Option 2: Deploy WAR to Apache Tomcat:
mvn package
Copy the generated siplookup.war file from /target to your Tomcat webapps/ directory,
then start Tomcat and access: http://18.218.236.114:8081/

Optional: Deploy on AWS EC2:
1. Transfer WAR file to EC2:
   scp target/siplookup.war ubuntu@<ec2-ip>:/opt/tomcat/webapps/

2. SSH into your EC2 instance and start Tomcat.

3. Access the app: http://18.218.236.114:8081/

References:
1. Spring Boot Documentation: https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/
2. MySQL Documentation: https://dev.mysql.com/doc/
3. Materialize CSS: https://materializecss.com
4. Amazon EC2 Docs: https://docs.aws.amazon.com/ec2/
5. Java SE 17 Docs: https://docs.oracle.com/en/java/javase/17/
6. Xu & Babar, 2010 – Software Product Comparison: https://doi.org/10.1016/j.jss.2009.10.033
7. Boehm & Lane, 2007 – Software-Intensive Systems: https://doi.org/10.1109/MC.2007.59
8. Bosch, 2009 – Software Product Ecosystems: https://doi.org/10.1109/SPLC.2009.12
9. Bass et al., 2012 – Software Architecture in Practice
10. Kusiak, 2001 – Product Lifecycle Management: https://doi.org/10.1080/00207540110046203
