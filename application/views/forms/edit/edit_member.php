<div class="main-panel ps-container ps-theme-default" data-ps-id="944ece5a-d448-39e8-aadf-2abeef99bbb4">
      <!-- Navbar -->
      
      
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card ">
                <div class="card-header card-header-rose card-header-text">
                  <div class="card-text">
                    <h4 class="card-title">Edit Member</h4>
                  </div>
                </div>
                <div class="card-body ">
                  <form method="POST" action=""  class="form-horizontal ajax" id="visitor_form">
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Mr/Mrs Name</label>
                      <div class="col-sm-3">
                        <div class="form-group bmd-form-group">
                          <input type="text" id="mem_name" name="mem_name" value="<?php echo $member->member_name ?>" class="form-control" required>
                          
                        </div>
                      </div>
                    </div>
                  

                    <div class="row">
                      
                       <label class="col-sm-2 col-form-label">CNIC</label>
                      <div class="col-sm-3">
                        <div class="form-group bmd-form-group">
                          <input type="text" id="mem_cnic" name="mem_cnic" class="form-control" value="<?php echo $member->member_nic?>" required>
                        </div>
                      </div>
                    </div>
                    
                      <div class="row">
                      <label class="col-sm-2 col-form-label">Residence</label>
                      <div class="col-sm-8">
                        <div class="form-group bmd-form-group">
                          <input type="text" id="mem_residence" name="mem_residence" class="form-control" value="<?php echo $member->member_resident ?>" required>
                          
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <label class="col-sm-2 col-form-label">Address</label>
                      <div class="col-sm-8">
                        <div class="form-group bmd-form-group">
                          <input type="text" id="mem_address" name="mem_address" class="form-control" value="<?php echo $member->member_address ?>" required>
                          
                        </div>
                      </div>
                    </div>
                    

                    <div class="row">
                      <label class="col-sm-2 col-form-label">Cell No</label>
                      <div class="col-sm-3">
                        <div class="form-group bmd-form-group">
                          <input type="text" id="mem_tel" name="mem_tel" class="form-control"  value="<?php echo $member->member_telephone ?>" required>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <label class="col-sm-2 col-form-label">Email</label>
                      <div class="col-sm-3">
                        <div class="form-group bmd-form-group">
                          <input type="text" id="mem_email" name="mem_email" class="form-control"  value="<?php echo $member->member_email ?>" required>
                        </div>
                      </div>
                    </div>


                     <div class="card-footer">
                  <input  type="button" onclick="edit_member()" value="Submit" readonly id="submit_vis" class="btn btn-fill btn-rose">
                   
                </div>


                  </form>
                </div>
                
               

              </div>
            </div>
            
          </div>
        </div>
      </div>
     
    <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
    <script>

function edit_member()
{

$(document).ready(function(){


    var namee=$('#mem_name').val();
    var cnicc=$('#mem_cnic').val();
    var tell=$('#mem_tel').val();
    var addd=$('#mem_address').val();
    var res=$('#mem_tel').val();
    var email=$('#mem_email').val();

  
    
   
    if(namee==='')
    {
      md.showNotification('bottom','right','Name field is empty',2);
    }
    else if(cnicc==='')
    {
      md.showNotification('bottom','right','Cnic field is empty',2);
    }
    else if(tell==='')
    {
      md.showNotification('bottom','right','Cell No field is empty',2);
    }
    else if(addd==='')
    {
      md.showNotification('bottom','right','Address field is empty',2);
    }
   
    else
    {
        $.ajax({

      method:'POST',
      url:'<?php echo base_url('Admin/editMemberController') ?>',
      data:{id:'<?php echo $member->member_no ?>',name:namee,cnic:cnicc,tel:tell,add:addd,res:res,email:email},
      success:function(result)
      {

        if(result=='true')
        {
           md.showNotification('bottom','right','Member updated successfully',3);
           setTimeout(function(){
              location.href="<?php echo base_url()."Admin/showAllMembers" ?>";
            },2000);
        }
        else if(result=='false')
        {
          md.showNotification('bottom','right','Member not updated ! Something went wrong. Please try again later.',2);
        }
    
      }
    });
    }

 
  





});


}

    </script>