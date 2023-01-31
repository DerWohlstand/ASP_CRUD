
        <div>
            
    <!--SideBar Start -->
    
        <div class="sidebar">
            <ul class="sidebar--items">
                <li>
                    <a href="admin.aspx" id="active--link">
                        <span class="icon icon-1"><i class="ri-layout-grid-line"></i></span>
                        <span class="sidebar--item">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="banner.aspx">
                        <span class="sidebar--item">Change Banner</span>
                    </a>
                </li>
                <li>
                    <a href="services.aspx">
                        <span class="sidebar--item" style="white-space: nowrap;">Add/Edit Services</span>
                    </a>
                </li>
                <li>
                    <a href="projects.aspx">
                        <span class="sidebar--item">Add Projects</span>
                    </a>
                </li>
                <li>
                    <a href="customer.aspx">
                        <span class="sidebar--item">Customers</span>
                    </a>
                </li>
                <li>
                    <a href="blog.aspx">
                        <span class="sidebar--item">Add Blogs</span>
                    </a>
                </li>
                <li>
                    <a href="areview.aspx">
                        <span class="sidebar--item">All Reviews</span>
                    </a>
                </li>

            </ul>
            <ul class="sidebar--bottom-items">
                <li>
                    <a href="#">
                        <span class="icon icon-7"><i class="ri-settings-3-line"></i></span>
                        <span class="sidebar--item">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="index.aspx">
                        <span class="icon icon-8"><i class="ri-logout-box-r-line"></i></span>
                        <span class="sidebar--item">Logout</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- Side Bar end -->
            <style>
                a{
            text-decoration:none;
        }</style>
            <script src="js/main.js"></script>
            <script>
                let menu = document.querySelector('.menu')
                let sidebar = document.querySelector('.sidebar')
                let mainContent = document.querySelector('.main--content')

                menu.onclick = function () {
                    sidebar.classList.toggle('active')
                    mainContent.classList.toggle('active')
                }
            </script>
        </div>
    
