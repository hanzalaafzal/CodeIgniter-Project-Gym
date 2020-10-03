<body id="mycont">
<div  class="main-panel ps-container ps-theme-default ps-active-y" data-ps-id="ad4dab3a-0431-c2c3-e934-a67efb7d756f">
      <!-- Navbar -->

      <div class="content">
          <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">fitness_center</i>
                  </div>
                  <h3 class="card-title">Therapy/Massage Packages</h3>
                 
                </div>
                <div class="card-body">
                  <div class="toolbar">
                    <!--        Here you can write extra buttons/actions for the toolbar              -->
                  </div>
                  <div class="material-datatables">
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                      <thead>
                        <tr>
                          <th>Package Name</th>
                         
                          <th>Package Price</th>
                          
                          <?php
                          if($this->session->userdata('access_level')==1)
                          {
                            ?>

                            <th class="disabled-sorting text-right">Actions</th>
                          <?php
                          } 
                           ?>
                          
                        </tr>
                      </thead>
                      
                      <tbody>
                      
                          <?php
                          if($w_pkgs->num_rows()>0)
                          {
                            foreach($w_pkgs->result() as $pkg)
                            {
                              ?>

                              <tr>

                                <td><?php echo $pkg->name ?></td>
                            
                                <td><?php echo $pkg->price ?></td>

                                <?php
                                if($this->session->userdata('access_level')==1)
                                {
                                  ?>

                                    <td class="text-right">
                                    
                                    <button type="button" onclick="Move(<?php echo $pkg->id ?>)" class="btn btn-link btn-warning btn-just-icon remove"><i class="material-icons">edit</i>

                                  
                                    <button type="button" onclick="del_package(<?php echo $pkg->id ?>,'<?php echo $pkg->name ?>')" class="btn btn-link btn-warning btn-just-icon remove"><i class="material-icons">close</i>
                                  
                          </td>

                                  <?php
                                }

                                 ?>

                                
                        


                              </tr>

                              <?php

                            }
                          }
                        else
                        {
                          ?>
                          <h4>No Packages</h4>
                          <?php

                        }


                           ?>
                        
                        
                      </tbody>
                    </table>
                  </div>
                </div>
                <!-- end content-->
              </div>
              <!--  end card  -->
            </div>
            <!-- end col-md-12 -->
          </div>
          <!-- end row -->
        </div>
      </div>
    </div>

    <script>

      function del_package(id,name)
      {
       

        $(document).ready(function(){

        $.ajax({
          method:"POST",
          url:'<?php echo base_url('Admin/delWorkoutPackage_Controller') ?>',
          data:{delid:id,name:name},
          success:function(result)
          {
            if(result=='true')
            {
              md.showNotification('bottom','right','Package Deleted Successfully',3);
            setTimeout(function(){
              location.reload();
            },2000);

            }
            else
            {
              md.showNotification('bottom','right','Package not deleted ! Something went wrong. Please try again later',2);
  
            }
            
          }
        });
    


      });
    

    }
    function Move(id)
    {
      location.href="editWorkoutPackageForm/"+id;
    }
     
    </script>
    
