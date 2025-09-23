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
                        <div class="my-2"><a class="btn btn-primary fs-5 py-2 px-4" role="button" href="<?php echo URLROOT; ?>/enrolls?<?php echo $queryString; ?>">Apply Now!</a></div>
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
                <div class="my-2"><a class="btn btn-light fs-5 py-2 px-4" role="button" href="<?php echo URLROOT; ?>/enrolls?<?php echo $queryString; ?>">Apply Now !</a></div>
            </div>
        </div>
    </section>

  
<?php require APPROOT . '/views/inc/footer.php'; ?>

<!-- === BEGIN: Simple Apply Form with US Address Autocomplete === -->
<link rel="stylesheet" href="https://unpkg.com/@geoapify/geocoder-autocomplete@^1/styles/minimal.css">
<style>
  .apply-card{max-width:720px;margin:2rem auto;padding:1.25rem;border:1px solid #ddd;border-radius:12px;background:#fff;box-shadow:0 4px 16px rgba(0,0,0,.06)}
  .apply-card h2{margin:0 0 1rem 0;font-size:1.25rem}
  .grid{display:grid;grid-template-columns:1fr 1fr;gap:12px}
  .field{display:flex;flex-direction:column;gap:6px}
  .field label{font-weight:600}
  .field input{padding:.625rem .75rem;border:1px solid #cbd5e1;border-radius:8px;font:inherit}
  .full{grid-column:1/-1}
  .btn{display:inline-block;padding:.7rem 1.2rem;border:0;border-radius:10px;background:#111827;color:#fff;font-weight:700;cursor:pointer}
  .error{color:#b91c1c;font-size:.9rem;margin-top:.25rem}
  .note{font-size:.85rem;color:#555;margin-top:.5rem}
  /* make Geoapify input blend in */
  .geoapify-autocomplete-input{padding:.625rem .75rem;border:1px solid #cbd5e1;border-radius:8px}
  .geoapify-autocomplete-items{border-radius:10px;border:1px solid #e5e7eb}
  /* Make the autocomplete input visible */
#address-autocomplete .geoapify-autocomplete-input {
  display: block !important;
  width: 100% !important;
  min-height: 40px !important;
  padding: 10px 12px;
  border: 1px solid #cbd5e1;
  border-radius: 8px;
  font-size: 1rem;
}
</style>

<div class="apply-card">
  <h2>Apply</h2>
  <form id="applyForm" novalidate>
    <div class="grid">
      <div class="field">
        <label for="firstName">First Name</label>
        <input id="firstName" name="firstName" type="text" autocomplete="given-name" required />
        <div class="error" id="firstNameErr"></div>
      </div>
      <div class="field">
        <label for="lastName">Last Name</label>
        <input id="lastName" name="lastName" type="text" autocomplete="family-name" required />
        <div class="error" id="lastNameErr"></div>
      </div>

      <div class="field full">
        <label>Full Address (US)</label>
       <div id="address-autocomplete" style="min-height:40px;"></div>
        <div class="note">Start typing and pick your address from the list.</div>
        <div class="error" id="addressErr"></div>
      </div>
    </div>

    <!-- Hidden fields captured from the selected address -->
    <input type="hidden" id="addr_line" name="addr_line" />
    <input type="hidden" id="addr_city" name="addr_city" />
    <input type="hidden" id="addr_state" name="addr_state" />
    <input type="hidden" id="addr_postcode" name="addr_postcode" />

    <div style="margin-top:1rem">
      <button class="btn" id="applyBtn" type="submit">Apply</button>
    </div>
    <p class="note">States OK, RI, MD, AR and TX will be routed to a special page; the rest go to a local page.</p>
  </form>
</div>

<script src="https://unpkg.com/@geoapify/geocoder-autocomplete@^1/dist/geocoder-autocomplete.umd.min.js"></script>
<script>
(function(){
  // TODO: replace with your real key (free tier): https://www.geoapify.com/
  const GEOAPIFY_KEY = "6083ee79ab304f71a2d527d154edad77";

  // TODO: set your destination URLs
  const SPECIAL_STATES_URL = "https://example.com/special-destination";
  const DEFAULT_LOCAL_URL   = "/enrolls";

  const specialStates = new Set(["OK","RI","MD","AR","TX"]);

  const form = document.getElementById("applyForm");
  const firstName = document.getElementById("firstName");
  const lastName  = document.getElementById("lastName");

  const firstNameErr = document.getElementById("firstNameErr");
  const lastNameErr  = document.getElementById("lastNameErr");
  const addressErr   = document.getElementById("addressErr");

  const line   = document.getElementById("addr_line");
  const city   = document.getElementById("addr_city");
  const state  = document.getElementById("addr_state");
  const zip    = document.getElementById("addr_postcode");

  // Initialize Geoapify Autocomplete
  const container = document.getElementById("address-autocomplete");
  const ac = new GeocoderAutocomplete.GeocoderAutocomplete(
    container,
    GEOAPIFY_KEY,
    {
      lang: "en",
      countryCodes: ["us"],
      placeholder: "123 Main St, City, ST ZIP",
      filter: { countrycode: ["us"] },
      limit: 8,
      type: "street,address,building"
    }
  );

  // keep last selected place
  let selected = null;

  ac.on("select", (value) => {
    selected = value;
    if (!value || !value.properties) return;
    const p = value.properties;
    // Normalize fields
    const line1 = [p.housenumber, p.street].filter(Boolean).join(" ");
    const cityName = p.city || p.county || "";
    const st = (p.state_code || "").toUpperCase();
    const postal = p.postcode || "";
    // populate hidden fields
    line.value = line1;
    city.value = cityName;
    state.value = st;
    zip.value = postal;
    // Clear address error if any
    addressErr.textContent = "";
  });

  // Minimal client-side validation
  function validate(){
    let ok = true;
    firstNameErr.textContent = "";
    lastNameErr.textContent = "";
    addressErr.textContent = "";

    if(!firstName.value.trim()){
      firstNameErr.textContent = "First name is required.";
      ok = false;
    }
    if(!lastName.value.trim()){
      lastNameErr.textContent = "Last name is required.";
      ok = false;
    }
    // Require a selected suggestion to avoid free-typed garbage
    if(!selected || !selected.properties || (selected.properties.country_code || "").toUpperCase() !== "US"){
      addressErr.textContent = "Please pick a US address from the suggestions.";
      ok = false;
    } else if(!(selected.properties.state_code)){
      addressErr.textContent = "Selected address is missing a state; pick a different one.";
      ok = false;
    }
    return ok;
  }

  form.addEventListener("submit", (e) => {
    e.preventDefault();
    if(!validate()) return;

    const st = (state.value || "").toUpperCase();
    const dest = specialStates.has(st) ? SPECIAL_STATES_URL : DEFAULT_LOCAL_URL;

    // Build query params so the destination page can prefill names and address
    const params = new URLSearchParams({
      firstName: firstName.value.trim(),
      lastName: lastName.value.trim(),
      addressLine: line.value || (selected && selected.properties && selected.properties.formatted) || "",
      city: city.value || "",
      state: st || "",
      zip: zip.value || ""
    });

    // Redirect
    window.location.href = dest + (dest.includes("?") ? "&" : "?") + params.toString();
  });
})();
</script>
<!-- === END: Simple Apply Form with US Address Autocomplete === -->
