<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CEMHistory.aspx.cs" Inherits="CEMHistory" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>History | About CEM </title>
    <meta name="description" content=" Headquartered in Dubai, CEM Business solution is a global IT services Organization focusing on Microsoft Dynamics suite of ERP and CRM solutions. Our Offices at Chennai, INDIA, Mumbai, Dubai, UAE, Sharjah, UAE, Abu Dhabi, UAE, Kuwait, USA, UK " />
    <meta name="keywords" content="Microsoft dynamics suite, Microsoft Dynamics ERP and CRM Business software" />
    <meta name="robots" content="index, follow" />
    <script src="clearbox.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/about_banner.jpg" alt="about cem" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <div style="padding: 0 20px 0 20px; text-align: justify;">
                <h1>
                    CEM History</h1>
                <p>
                    <strong>2003 to 2008</strong><br />
                    If you were to ask us what was the motivational thought hidden behind the minds
                    of our founders before the inauguration of CEM&rsquo;s first office at Dubai Internet
                    city? We&rsquo;d say it was their &ldquo;Confidence in Microsoft technology, determination
                    to bring the company to excellence and their Management capabilities&rdquo;. This
                    simple motto helped us to become a leading IT CONSULTING &amp; TECHNOLOGY service
                    provider in the Microsoft Dynamics space.</p>
                <p>
                    It is with these three trust slogans we started our journey which shaped us as a
                    company that has carefully invested in understanding the diversified industry requirement
                    and delivering the right solution to our customers. Of course we can&rsquo;t share
                    trade secrets, but here's a list of milestone dates of both big things and small.&nbsp;</p>
                <p>
                    It was on Christmas, when we incorporated as CEM Business Solution FZ LLC on 25th
                    December 2003. The intention was to create a centre for top Management individuals
                    in a company to excel themselves within their business. Our belief in our approach
                    was paying off just in line with our expectations. Helping customers unleash their
                    full potential by providing them transformational business solutions is our goal
                    at CEM. Consequently, this was one of the reasons to establish our Indian Operations
                    on 27th August 2007 with our registered office in Goregaon, Mumbai. Followed by
                    which we enjoyed events of success due to our innovation and commitment in Dubai,
                    that drove us to start our Sharjah office on 03rd April 2008.
                    </p>
                <p>
                    With walking the talk in our DNA our first eight years were focussed on catering
                    the service requirement to our customers on Microsoft technology and setting up
                    our network offices in Middle East and India. Hard work and accumulated learning
                    of our first half of the decade has held us in good stead throughout our journey.</p>
                <p>
                    <strong>2009 to 2012</strong><br />
                    When a company is successful in all their endeavours, they are not distinguished
                    without a proper accreditation. Of course, CEM&rsquo;s List of awards and recognition
                    has always been a milestone in our Journey, which has given us a privilege to stand
                    out of our competitors. Our first award as the <strong>Best Sales Partner</strong>
                    in the year 2009 from Microsoft was one of the best example of how we started our
                    efforts as a Gold certified partner of Microsoft, followed by the most prestigious
                    Award of <strong>Microsoft President&rsquo;s Club</strong> in the same year. Although,
                    these two awards were the distinguisher of our efforts, the <strong>Best Implementation
                        Partner</strong> award from Microsoft in 2009 created a revolution in the history
                    of CEM that took us to an elevated position in the Dynamics Space.</p>
                <p>
                    Towards the end of 2010, we believed we had a strong feel of India's pulse in Microsoft
                    products which led us to the establishment of our Chennai office on 01st September
                    2010. In the same year we again received the <strong>Best implementation award for Microsoft
                        Dynamics</strong> for the second time. We also became the <strong>Gold certified partner
                            and the UAE country partner</strong> of Microsoft. In line with our instantaneously
                    diversifying offices it was natural that our ubiquity reflects the expanded sphere.
                    We opened up our fifth office in UK on 01st March 2011. The year tuned to be more
                    promising along with our <strong>third Best Implementation Partner award</strong>
                    in a row. We globally, proved our consistency in our deliverables, commitment and
                    customer satisfaction.
                    </p>
                <p>
                    Beginning of the year 2012 was even more prosperous with the inauguration of our
                    Abu Dhabi office on 14th February 2012, followed by offices in USA at New Jersey
                    and California in August 2012. We were announced as the fastest growing IT Company
                    in Dynamics Space by Microsoft which was the most desired name we got for our exertions,
                    continued by the best marketing partner award and Microsoft President&rsquo;s club
                    award. By the mid of 2012 we opened our 9th office in Singapore on 21st Sep 2012</p>
                <p>
                    <strong>What does a leader do to keep the original spirit and belief alive and kicking?
                    Innovate. Innovate and Innovate.
                    </strong>
                    <br />
                    In this era of Information technology, business aspirational needs are more and
                    more multiplicative within companies to win the market competition. The needs are
                    always directly proportional to the companies&rsquo; business aspirations. Inferring
                    the market competition, by the beginning of 2011, we created our first innovative
                    product to satisfy the need of construction industry - <strong>CEM&rsquo;s AX Construct</strong>
                    in April 2011 that can integrate and manage your construction needs. With the success
                    of our first innovation, we did not stop. This continued with our immediate AX product
                    - <strong>CEM&rsquo;s AX Payroll</strong> in August 2011 for managing the Human
                    capital Management (HCM) and Payroll</p>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
