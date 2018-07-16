<div class="page-header">
    <h1>Create User</h1>
    <a href="{{ url() }}"><button class="btn btn-primary">Back</button></a>
</div>

<div class="row">
	<div class="col-lg-12">
		{{ form("index/update", "method": "POST")}}
		{{ hidden_field("id", "value": '' ~ dataUser.id) }}
		<div class="form-group">
			<label>Username</label>
			{{ text_field("username", "class": "form-control", "value": '' ~ dataUser.username)}}
		</div>
		<div class="form-group">
			<label>Password</label>
			{{ text_field("password", "class": "form-control", "value": '' ~ dataUser.password)}}
		</div>
		<div class="form-group">
			{{ submit_button("Submit", "class": "btn btn-primary") }}
		</div>
	</div>
</div>