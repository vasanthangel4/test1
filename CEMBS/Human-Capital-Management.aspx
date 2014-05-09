<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Human-Capital-Management.aspx.cs" Inherits="Human_Capital_Management" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Human Capital Management | CEM AX HCM</title>
    <meta name="description" content="CEM's Human Capital Management is the most intuitive and modern suite of HCM and Payroll Management solution built on top of Microsoft Dynamics AX and designed to adapt to the evolving needs of your businesses. CEM AX HCM, a tightly integrated Microsoft AX system that enables you to reduce administrative costs, save time, and manage employee information effectively. CEM AX HCM can help you by managing all your HCM & payroll functions in one integrated system, helps you to streamline your complete business processes, improve HCM & payroll accuracy and provide insight into personnel costs —even when dealing with exceptions and complex workforce challenges. " />
    <meta name="keywords" content="Ax Capital, Microsoft Hcm, Ax HR, Axapta HR, MS Dynamics HR, Microsoft Dynamics HR, 
microsoft dynamics hr, dynamics hr, erp for hr, ms dynamics hr, ax hr, axapta hr, human resource management, hcm, hr software, human resource planning, human capital management, talent management software, human resource management software, hcm software, human capital management software, human capital management, talent management software, resource management software, human resource management system software, employee management software, human capital management solutions, human resource management,  human capital management system, human resources management, human resource management system, performance management software, management software, hr manager software, payroll management software, recruitment management software, staff management software, data management software, talent management, talent management system, talent management strategy, knowledge management software, what is talent management, hr management software
talent management software comparison, talent management solutions, project management software, talent management process, talent management systems, employee performance management software, global talent management, talent management tools, human resource management system software, workforce planning solutions, resource planning software, recruitment planning, succession planning software, recruitment management software,  compensation management system, hr,  hr and payroll software, hr management software, hr manager software, hr payroll software, hr payroll solution, hr software, hr software packages, hr softwares, hr solutions, hr system, hr systems, HRMS
" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_products').addClass('bluebg');
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/header_hcm.jpg" style="width: 980px; height: 192px;" alt="hcm" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">CEM AX HCM </a></li>
                <li><a href="#recruitment" class="firstlevel">Recruitment Management </a></li>
                <li><a href="#manpower" class="firstlevel">Man Power Planning/Budgeting </a></li>
                <li><a href="#career" class="firstlevel">Career Planning</a></li>
                <li><a href="#performance" class="firstlevel">Performance Management </a></li>
                <li><a href="#talent" class="firstlevel">Talent Management </a></li>
                <li><a href="#compensation" class="firstlevel">Compensation Management </a></li>
                <li><a href="#course" class="firstlevel">Course Management </a></li>
                <li><a href="#employeeperformance" class="firstlevel">Employee Performance </a></li>
                <li><a href="#succession" class="firstlevel">Succession Planning</a></li>
                <li><a href="#transfer" class="firstlevel">Transfer &amp; Promotions</a></li>
                <li><a href="#employee" class="firstlevel">Employee Recognition</a></li>
            </ul>
            <div class="tab_container">
                <div style="padding: 0 10px; text-align: justify;">
                    <div class="tab_content" id="overview">
                        <h1>
                            CEM AX HCM</h1>
                        <p>
                            The success of any organization depends on a strong commitment to its people. Proper management of human assets offers a sustainable, competitive advantage for high performance organizations. And while your Human Resources department provides the processes for managing people, CEM AX HCM provides the overview needed to map out strategies and plan the future.</p>
                        <p>
                          CEM AX HCM is built on AX, the most powerful, robust platform in the Microsoft Dynamics arsenal. With it, you can plan, recruit, manage, retain and qualify performances through a fully automated HR process. Now, you can draw data from seemingly disparate parts of your organization, and bring into focus the current state of your human resources, so you can plot the future with confidence.</p>
                        <p>
                           CEM AX HCM seamlessly integrates data from across multiple positions, entities and geographic locations.  CEM has added the following modules within Microsoft Dynamics 2012 ERP, seamlessly in order to provide, comprehensive solution.</p>
                        <ul class="ul_reasons">
                            <li>Recruitment Management</li>
                            <li>Manpower Planning &amp; Budgeting</li>
                            <li>Career Planning &amp; Development</li>
                            <li>Performance Management</li>
                            <li>Talent Management
                                <ul style="list-style: circle;padding:5px 0 0 20px;">
                                    <li>Compensation Management</li>
                                    <li>Course Management</li>
                                    <li>Employee Performance Tracking</li>
                                </ul>
                            </li>
                            <li>Succession Planning</li>
                            <li>Transfer & Promotion</li>
                            <li>Employee recognition</li>
                            <li>Training Management</li>
                            <li>Payroll Management
                                <ul style="list-style: circle;padding:5px 0 0 20px;">
                                    <li>Absence Management</li>
                                    <li>Time Management</li>
                                    <li>Social Security Management</li>
                                    <li>Claims Management</li>
                                    <li>Insurance management</li>
                                    <li>Loan Management</li>
                                    <li>Employee Relations Management</li>
                                    <li>Payroll Processing</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="tab_content" id="recruitment">
                        <h2 class="underline">
                            Recruitment Management</h2>
                        <ul class="ul_reasons">
                            <li>Quickly and easily tracks the status of an applicant through the hiring process</li>
                            <li>Store and maintain an unlimited number of resumes, credentials, documentation of industry certifications, recommendation letters associated with each applicant</li>
                            <li>Provision for raising hire requests and ability to define the job requirements</li>
                            <li>Schedule interviews for candidates and configure interview stages</li>
                            <li>Build comprehensive resume database and search your internal talent pool for qualified candidates</li>
                            <li>Intuitive and easy to use self-service transactions for managers, employees, candidates, and staffing agencies</li>
                            <li>Store job interview notes and forms</li>
                            <li>Perform skills queries to determine available candidates</li>
                            <li>Track referral sources</li>
                            <li>Provision for employee referrals and rewards for employees based on certain rules. Additional rules have to be written in Payroll to facilitate the requirements</li>
                            <li>Associate a single applicant with multiple job requisitions</li>
                            <li>Convert applicant information to employees upon hiring to eliminate redundant data entry</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="manpower">
                        <h2 class="underline">
                           Man Power Planning/Budgeting</h2>
                        <ul class="ul_reasons">
                            <li>Let a Business Unit Manager enter and post a staffing plan request for a specific plan period including FTE/Head counts, new hires, replacements, promotions, expected leavers etc.</li>
                            <li>Provide functionality to enable the calculation of the cost of total manpower required
                                by the business units and preparation of the manpower plan proposal. Enable what-if
                                analysis to compare various scenarios</li>
                            <li>Make visible for the OD User, full plan of existing and proposed head count, job description and Organization structure along with the details of costing of pay elements for new positions and the changes in current structure</li>
                            <li>Provide functionality to enable the entry and posting of the approved budget amounts against a department or group proposed amounts. Enable what-if analysis to compare various scenarios</li>
                            <li>Provide functionality to enable the evaluation, analysis and approval of job description and positions with effective dates, if the job or position is new</li>
                            <li>Validate the staffing requests against the maximum number of positions for each job within a department</li>
                            <li>Enable the OD User to update job descriptions, positions and reporting relationships in the organization structure, based on the approved plan, with effective dates</li>
                            <li>Provide an inquiry view the Budgeted vs. actual head count by department or group</li>
                            <li>Provide an inquiry to display the ageing of jobs by the department group</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="career">
                        <h2 class="underline">
                            Career Planning & Development</h2>
                        <ul class="ul_reasons">
                            <li>Ability to maintain the minimum period to be spent in each position in order to be eligible to move to the next level in the career path</li>
                            <li>Provide a feature to verify the disciplinary action history for an employee at the time of performance assessment</li>
                            <li>Validation: A career level promotion should be allowed only when the target position is vacant</li>
                            <li>Enable the employee status to be updated as ‘Probation’ when an employee moves from one position to the other in the career development path</li>
                            <li>Alert: The expiry of the probation period of an employee</li>
                            <li>Provide a path to inquire on the employees who are due for confirmation and post a request to the workflow for processing the confirmation</li>
                            <li>Switch the pay components of the employee, from the old position to new, only on the confirmation in the new position</li>
                            <li>Provide an inquiry to view the skill gap of an employee against a position</li>
                            <li>Provide an alert to HR, whenever an employee updates his qualification/skills/experience information and it matches with a target position’s requirements</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="performance">
                        <h2 class="underline">
                            Performance Management</h2>
                        <ul class="ul_reasons">
                            <li>Align goals: Employees and managers can align individual goals with company business objectives</li>
                            <li>Deliver relevant formal reviews: Easy, engaging focal reviews and 360-degree assessments expand performance insight and improve employee engagement and retention</li>
                            <li>Calibrate performance: Intuitive, visual employee comparisons ensure objective and fact-based assessment decisions</li>
                            <li>Support managers: Writing Assistant and Coaching Advisor help managers provide meaningful feedback and coaching</li>
                            <li>Identify top talent: Compare and rate employees across the same dimensions to identify high performers and potential future leaders</li>
                            <li>Communicate continuously: With AX HCM, you can easily track issues and accelerate work on top-priority projects</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="talent">
                        <h2 class="underline">
                            Talent Management</h2>
                        <ul class="ul_reasons">
                            <li>Create development plans to ensure leadership continuity</li>
                            <li>Pay for performance and retain essential contributors</li>
                            <li>Align your workforce with key business objectives</li>
                            <li>Find and recruit the right talents quickly and cost effectively with the automated recruitment process</li>
                            <li>Facilitation to identify the necessary manpower skills and effectively develop proficient talents of your employees to reach corporate goals</li>
                            <li>Create on-roll employee development plans and conveniently monitor their progress</li>
                            <li>Implement innovative compensation and reward programs for your employees based on their performance</li>
                            <li>Provide a comprehensive learning environment for all of your organization's training needs</li>
                            <li>The proactive succession and development management provides you a better business continuity</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="compensation">
                        <h2>
                            Compensation Management</h2>
                        <ul class="ul_reasons">
                            <li>Identify and develop the skills necessary to align your workforce with business goals</li>
                            <li>Build a competency catalogue that can be leveraged by all talent management processes</li>
                            <li>Define key competencies along with your job architecture and cultivate talent pools accordingly</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="course">
                        <h2>
                            Course Management</h2>
                        <ul class="ul_reasons">
                            <li>Empower employees to share best practices</li>
                            <li>Control learning processes and manage the course offerings</li>
                            <li>Support the creation, distribution, and storage of course materials</li>
                            <li>Help instructors manage attendee participation and activities for their courses</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="employeeperformance">
                        <h2>
                            Employee Performance Tracking</h2>
                        <ul class="ul_reasons">
                            <li>Provide functionality to enable temporary transfers of employees with the Talent Pool reference so that the results could be evaluated and tied back to the Talent Pool analysis</li>
                            <li>Enable the integration of Performance Management module with the succession planning module to facilitate the performance appraisal of employees. These short term assignments are kept apart from the annual career based performance appraisal exercise</li>
                            <li>Provide functionalities to indicate to the users the extent of readiness of the candidates on a given date for the target position, in terms of percentage. The readiness level should also enable the user to project a future date by which the candidate will be able to take up the target position, say in 6 months, 1 year etc. Along with the readiness, a risk assessment should also be performed wherein the criticality of the role is noted and any risk of the candidate leaving the organization in the near future etc., are analyzed and profiled</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="succession">
                        <h2 class="underline">
                            Succession Planning</h2>
                        <ul class="ul_reasons">
                            <li><strong>Identify key positions:</strong>&nbsp;Succession management lets you address current and potential talent gaps to reduce the risk of poor business execution</li>
                            <li><strong>Provide talent continuity:</strong>&nbsp;
                           Proactively identify your go-to employees and develop them for upcoming job transitions</li>
                            <li><strong>Gain workforce insights:</strong>&nbsp;
                           Gain visibility into employee experience, expertise, performance, and career aspirations</li>
                            <li><strong>Understand employee histories:</strong>
                            &nbsp;Map every staffing move across the company and see a gained employee experience</li>
                            <li><strong>Improve career planning:</strong>
                            &nbsp;Address talent gaps, engage employees, and accelerate learning with targeted development plans</li>
                            <li><strong>Calibrate ratings:</strong>&nbsp;
                             Ensure objective, accurate ratings across groups and departments using competency-based criteria</li>
                        </ul>
                        <img width="354" alt="succession" src="images/successiveplanning.png" style="border: 0px;" /></div>
                    <div class="tab_content" id="transfer">
                        <h2 class="underline">
                            Transfer &amp; Promotions</h2>
                        <ul class="ul_reasons">
                            <li>Provide a functionality to request for transfer – temporary as well as permanent</li>
                            <li>Route the transactions in the workflow involving HR, based on parameter setting for the number of days the transfer is requested</li>
                            <li>Provide an analysis (in the form of reports) and alert if employees of same position are swapped among locations</li>
                            <li>If the transfer request type is ‘permanent’, then provide an option to carry out career path validation</li>
                            <li>Alert for performance appraisal, if an employee sends a request for transfer after spending a minimum of 3 months</li>
                            <li>Requests for permanent transfers to a higher position is termed as promotions and goes through the screening/shortlisting/interview process carried out by the recruitment department, if the vacancy exists</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="employee">
                        <h2 class="underline">
                          Employee Recognition</h2>
                        <ul class="ul_reasons">
                            <li>Provide a form where a user can request for recognition for his subordinate</li>
                            <li>Enable entry and maintenance of recognition categories</li>
                            <li>On approval of recognition transaction, credit a day’s leave for the employee in the recognition leave balance</li>
                            <li>Integrate recognition with leave management and Incident records (Disciplinary records)</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
