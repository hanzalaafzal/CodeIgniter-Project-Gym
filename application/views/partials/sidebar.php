<div class="sidebar" data-color="rose" data-background-color="black" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
     
        </a>
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
        Safari Gym
        </a>
      </div>
      <div class="sidebar-wrapper ps-container ps-theme-default ps-active-y" data-ps-id="d09f5c7b-ebda-63a3-e76c-ef2e775b2a5e">
        <div class="user">
          <div class="photo">
           <i class="material-icons">person</i>
          </div>
          <div class="user-info">
            <a data-toggle="collapse" href="#collapseExample" class="username">
              <span>
                <?php echo $this->session->userdata('gym_admin') ?>
                <b class="caret"></b>
              </span>
            </a>
            <div class="collapse" id="collapseExample">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="<?php echo base_url()."Admin/Profile" ?>">
                    <i class="material-icons">account_circle</i>
                    <span class="sidebar-normal"> My Profile </span>
                  </a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="#">
                    <span class="sidebar-mini"> S </span>
                    <span class="sidebar-normal"> Settings </span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="nav">
          <li class="nav-item active ">
            <a class="nav-link" href="<?php echo base_url('Admin/dashboard') ?>">
              <i class="material-icons">dashboard</i>
              <p> Dashboard </p>
            </a>
          </li>
          <!------Members section start ----->
          <li class="nav-item ">
            <a class="nav-link" data-toggle="collapse" href="#pagesExamples">
              <i class="material-icons">face</i>
              <p> Members
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="pagesExamples">
              <ul class="nav">
                <?php
                if($this->session->userdata('access_level')==1)
                {
                  ?>
                  <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/addMemberForm" ?>">
                    <i class="material-icons">person_add</i>
                    <span class="sidebar-normal"> Add Members </span>
                  </a>
                </li>


                  <?php
                }


                 ?>
                      <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showAllMembers" ?>">
                    <i class="material-icons">group</i>
                    <span class="sidebar-normal"> Total Members </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showActiveMembers" ?>">
                    <i class="material-icons">how_to_reg</i>
                    <span class="sidebar-normal"> Active Members </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showInActiveMemers" ?>">
                    <i class="material-icons">perm_identity</i>
                    <span class="sidebar-normal"> Inactive Members </span>
                  </a>
                </li>
          
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showDormantMembers" ?>">
                    <i class="material-icons">airline_seat_individual_suite</i>
                    <span class="sidebar-normal"> Dormant Members </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showFreezeMembers" ?>">
                    <i class="material-icons">ac_unit</i>
                    <span class="sidebar-normal"> Freeze Members </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showUnpaidMembers" ?>">
                    <i class="material-icons">account_circle</i>
                    <span class="sidebar-normal"> Unpaid Members </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showDailyVisitors"?>">
                    <i class="material-icons">account_circle</i>
                    <span class="sidebar-normal"> Daily Visitors </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <!------Members section end ----->

          <li class="nav-item ">
            <a class="nav-link" data-toggle="collapse" href="#componentsExamples">
              <i class="material-icons">fitness_center</i>
              <p> Packages
                <b class="caret"></b>
              </p>
            </a>
            <div class="collapse" id="componentsExamples">
              <ul class="nav">

                <?php
                if($this->session->userdata('access_level')==1)
                {
                  ?>

                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/addPackage_Form" ?>">
                    <span class="sidebar-mini"> + </span>
                    <span class="sidebar-normal"> Add Packages/Items
                     
                    </span>
                  </a>
                 
                </li>

              <?php
                }

                 ?>
           
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showDailyPackages" ?>">
                    <span class="sidebar-mini"> D </span>
                    <span class="sidebar-normal"> Daily Packages
                     
                    </span>
                  </a>
                 
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showMonthlyPackages" ?>">
                    <span class="sidebar-mini"> M </span>
                    <span class="sidebar-normal"> Monthly Packages </span>
                  </a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showTMPackages" ?>">
                    <span class="sidebar-mini"> T/M </span>
                    <span class="sidebar-normal"> Therapy/Massage Packages </span>
                  </a>
                </li>
                    <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showWorkoutPackages" ?>">
                    <span class="sidebar-mini"> W </span>
                    <span class="sidebar-normal"> Workout Packages </span>
                  </a>
                </li>

                        <li class="nav-item ">
                  <a class="nav-link" href="<?php echo base_url()."Admin/showItems" ?>">
                    <span class="sidebar-mini"> J </span>
                    <span class="sidebar-normal"> Juices/Items </span>
                  </a>
                </li>


                
              </ul>
            </div>
          </li>
        <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url()."Admin/Bar" ?>">
              <i class="material-icons">local_bar</i>
              <p> Juice Bar </p>
            </a>
          </li> 


     
          <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url()."Admin/showReports"?>">
              <i class="material-icons">timeline</i>
              <p> Sales Reports </p>
            </a>
          </li>
              <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url()."Admin/showBalance" ?>">
              <i class="material-icons">money</i>
              <p> Remaining balance </p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url()."Admin/showLogs" ?>">
              <i class="material-icons">receipt</i>
              <p> Logs </p>
            </a>
          </li>
            <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url()."Admin/showBin" ?>">
              <i class="material-icons">delete</i>
              <p> Reports Bin </p>
            </a>
          </li>
          <?php
          if($this->session->userdata('access_level')==1)
          {
            ?>
               <li class="nav-item ">
                <a class="nav-link" href="<?php echo base_url()."Admin/showAdmins" ?>">
                <i class="material-icons">group</i>
                <p> Admins </p>
              </a>
              </li>


            <?php
          }


          ?>
        


        </ul>
      <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; height: 582px; right: 0px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 552px;"></div></div></div>
    <div class="sidebar-background" style="background-image: url(../assets/img/sidebar-1.jpg) "></div></div>