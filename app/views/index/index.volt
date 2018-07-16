<div class="page-header">
    <h1>User</h1>
    <a href="{{ url("index/add") }}"><button class="btn btn-primary">User Baru</button></a>
</div>

<table class="table">
	<tr>
		<th>ID</th>
		<th>Username</th>
		<th>Password</th>
		<th>Action</th>
	</tr>
	{% for x in dataUser %}
	<tr>
		<td>{{ x.id }}</td> 
		<td>{{ x.username }}</td>
		<td>{{ x.password }}</td>
		<td>
			<a href="{{ url("index/edit") }}/{{ x.id }}"><button class="btn btn-primary btn-xs">Edit</button></a> &nbsp;
			<a href="{{ url("index/delete") }}/{{ x.id }}" onclick="return confirm('Apakah Anda Yakin Menghapus {{ x.username }}?');"><button class="btn btn-danger btn-xs">Hapus</button></a>
		</td>
	</tr>
	{% endfor %}
</table>
