<?php 
$queryString = $_SERVER['QUERY_STRING']; // e.g., "utm_source=google&utm_medium=cpc"

//echo $queryString;

require APPROOT . '/views/inc/header.php'; ?>
<?php 
$apply=true;
require APPROOT . '/views/inc/navbar.php'; 
?>

    <header class="pt-5 mb-5">
        <div class="container pt-4 pt-xl-5">
            <div class="row pt-5">
                <div class="col-md-6 text-center text-md-start mx-auto">
                    <div class="text-center">
                        <h1 class="display-4 fw-bold">Get your <span class="underline">FREE</span> Government Wireless Service&nbsp;now!.</h1>
                        <p class="fs-5 text-muted mb-2">High-Speed Data, Unlimited Talk & Text.</p>
                        <!-- <div class="my-2"><a class="btn btn-primary fs-5 py-2 px-4" role="button" href="<?php //echo URLROOT; ?>/enrolls?<?php //echo $queryString; ?>">Apply Now!</a></div> -->
                         <div class="my-2">
                    <button class="btn btn-primary fs-5 py-2 px-4" data-bs-toggle="modal" data-bs-target="#exampleModal">Check Availability</button>
                 </div>
                    </div>
                </div>
                <div class="col-md-6 mx-auto">
                    <div class="text-center position-relative"><img class="img-fluid" src="<?php echo URLROOT; ?>/public/img/illustrations/meeting.svg" style="width: 800px;"></div>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="container py-4 py-xl-5">
            <div class="row">
                <div class="col-md-6">
                    <h3 class="display-6 fw-bold pb-md-4">How to <span class="underline">Qualify</span></h3>
                    <p>You can qualify if you participate in government assistance programs such as:</p>
                </div>
                <div class="col-md-6">
                    <ul>
                    <li>Supplemental Nutrition Assistance Program (Food Stamps or&nbsp;SNAP)</li>
                    <li>Medicaid</li>
                    <li>Supplemental Security Income&nbsp;(SSI)</li>
                    <li>Federal Public Housing Assistance (Section&nbsp;8)</li>
                    <li>Veterans Pension or Survivors Benefit&nbsp;Programs</li>
                    <li>Bureau of Indian Affairs General&nbsp;Assistance</li>
                    <li>Tribally-Administered Temporary Assistance for Needy Families&nbsp;(TTANF)</li>
                    <li>Food Distribution Program on Indian Reservations&nbsp;(FDPIR)</li>
                    <li>Head Start (if income eligibility criteria are&nbsp;met)</li>
                </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="py-4 py-xl-5">
        <div class="container">
            <div class="text-white bg-primary border rounded border-0 border-primary d-flex flex-column justify-content-between flex-lg-row p-4 p-md-5">
                <div class="pb-2 pb-lg-1">
                    <h2 class="fw-bold text-secondary mb-2"> Do you receive government benefits?</h2>
                    <p class="mb-0">Just fill out this enrollment form.</p>
                </div>
                <!-- <div class="my-2"><a class="btn btn-light fs-5 py-2 px-4" role="button" href="<?php //echo URLROOT; ?>/enrolls?<?php //echo $queryString; ?>">Apply Now !</a></div> -->
                 <div class="my-2">
                    <button class="btn btn-light fs-5 py-2 px-4" data-bs-toggle="modal" data-bs-target="#exampleModal">Check Availability</button>
                 </div>
            </div>
        </div>
    </section>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="firstname">First Name <span class="requiredmark">*</span></label>
                                        <input type="text" id="firstname" name="firstname" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="lastname">Last Name <span class="requiredmark">*</span></label>
                                        <input type="text" id="lastname" name="lastname" class="form-control">
                                    </div>
                                </div>
                            </div>
        <div class="row pt-2">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="address1">Street Address <span class="requiredmark">*</span></label>
                                        <input type="text" id="address1" name="address1" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="address2">Apartment or Unit Number</label>
                                        <input type="text" id="address2" name="addess2" class="form-control">
                                    </div>
                                </div>
                            </div>
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
        <button type="button" class="btn btn-primary">Get Benefits</button>
      </div>
    </div>
  </div>
</div>
  
<?php require APPROOT . '/views/inc/footer.php'; ?>
