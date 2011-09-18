<!--  ----------------------------------------------------------------------  -->
<!--  NOTE: Please add the following <META> element to your page <HEAD>.      -->
<!--  If necessary, please modify the charset parameter to specify the        -->
<!--  character set of your HTML page.                                        -->
<!--  ----------------------------------------------------------------------  -->

<META HTTP-EQUIV="Content-type" CONTENT="text/html; charset=UTF-8">

<!--  ----------------------------------------------------------------------  -->
<!--  NOTE: Please add the following <FORM> element to your page.             -->
<!--  ----------------------------------------------------------------------  -->

<form action="https://cs4.salesforce.com/servlet/servlet.WebToCase?encoding=UTF-8" method="POST">

<input type=hidden name="orgid" value="00DP000000070cE">
<input type=hidden name="retURL" value="http://rackspace.com">

<!--  ----------------------------------------------------------------------  -->
<!--  NOTE: These fields are optional debugging elements.  Please uncomment   -->
<!--  these lines if you wish to test in debug mode.                          -->
<!--  <input type="hidden" name="debug" value=1>                              -->
<!--  <input type="hidden" name="debugEmail"                                  -->
<!--  value="abhilasha.gupta@rackspace.com">                                  -->
<!--  ----------------------------------------------------------------------  -->

<label for="name">Contact Name</label><input  id="name" maxlength="80" name="name" size="20" type="text" /><br>

<label for="email">Email</label><input  id="email" maxlength="80" name="email" size="20" type="text" /><br>

<label for="phone">Phone</label><input  id="phone" maxlength="40" name="phone" size="20" type="text" /><br>

<label for="company">Company</label><input  id="company" maxlength="80" name="company" size="20" type="text" /><br>

<label for="description">Description</label><textarea name="description"></textarea><br>

<label for="reason">Case Reason</label><select  id="reason" name="reason">

<option value="Login Issues">Login Issues</option>
</select><br>

Case Type:<select  id="00N50000001nfND" name="00N50000001nfND" title="Case Type"><option value="">--None--</option>
<option value="Didn&#39;t receive login credentials">Didn&#39;t receive login credentials</option>
<option value="Error Message">Error Message</option>
</select><br>

<label for="recordType">Case Record Type</label><select  id="recordType" name="recordType"><option value="012500000005R69">Partner Portal</option>

</select><br>

<input type="hidden"  id="external" name="external" value="1" /><br>

<input type="submit" name="submit">

</form>
