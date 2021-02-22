<div id="patients-dashboard" class="patients-dashboard">
    <table class="table">
        <thead class="table-dark">
            <tr>
                <th>Name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Age</th>
                <th>City</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
<?php
foreach ($patients as $patient) {
    echo '<tr>';
    echo '<td>'.$patient->first_name.'</td>';
    echo '<td>'.$patient->last_name.'</td>';
    echo '<td>'.$patient->email.'</td>';
    echo '<td>'.$patient->gender.'</td>';
    echo '<td>'.$patient->age.'</td>';
    echo '<td>'.$patient->city.'</td>';
    echo '<td><a class="btn btn-primary" href="index.php?request=getPatient&id='.$patient->id_pat.'">FILE</a></td>';
    echo '</tr>';
}
?>
        </tbody>
    </table>
</div>
