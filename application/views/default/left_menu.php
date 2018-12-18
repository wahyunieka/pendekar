<!-- Left Sidebar  -->
        <div class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>" aria-expanded="false"><i class="fa fa-tachometer"></i><span class="hide-menu">Dashboard</span></a>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-table"></i><span class="hide-menu">Product Management</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<?php echo $this->config->item('base_url');?>product">List Product</a></li>
                                <li><a href="<?php echo $this->config->item('base_url');?>product/category">Category Product</a></li>
                                <li><a href="<?php echo $this->config->item('base_url');?>product/type">Type Product</a></li>
                            </ul>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>store" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">Store Management</span></a>
                        </li>
                         <li> <a href="<?php echo $this->config->item('base_url');?>report" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="hide-menu">Report Management</span></a>
                        </li>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>crm" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">CRM Management</span></a>
                        </li>
                        </li>
                         <li> <a href="<?php echo $this->config->item('base_url');?>statis" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">Statis Management</span></a>
                        </li>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>news" aria-expanded="false"><i class="fa fa-book"></i><span class="hide-menu">News Management</span></a>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>event" aria-expanded="false"><i class="fa fa-book"></i><span class="hide-menu">Event Management</span></a>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>promotion" aria-expanded="false"><i class="fa fa-columns"></i><span class="hide-menu">Promotion Management</span></a>
                        </li>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>administrator" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">Administrator Management</span></a>
                        </li>
                        <li> <a href="<?php echo $this->config->item('base_url');?>customer" aria-expanded="false"><i class="fa fa-user"></i><span class="hide-menu">Customer Management</span></a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->