<div class="page-header">
    <h1>Create User</h1>
    <a href="{{ url() }}"><button class="btn btn-primary">Back</button></a>
</div>

<div class="row">
	<div class="col-lg-12">
		{{ form("index/create", "method": "POST")}}
		<div class="form-group">
			<label>Username</label>
			{{ text_field("username", "class": "form-control", "placeholder": "Username")}}
		</div>
		<div class="form-group">
			<label>Password</label>
			{{ text_field("password", "class": "form-control")}}
		</div>
		<div class="form-group">
			{{ submit_button("Submit", "class": "btn btn-primary") }}
		</div>
	</div>
</div>