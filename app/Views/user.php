<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.3.5/css/buttons.bootstrap5.min.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <?php include('_sidebar.php'); ?>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="container mt-5">
                    <h2>User Management</h2>
                    <?php if (session()->getFlashdata('success')) : ?>
                        <div class="alert alert-success">
                            <?= session()->getFlashdata('success') ?>
                        </div>
                    <?php endif; ?>
                    <a href="<?= base_url('/user/create') ?>" class="btn btn-primary mb-3">Tambah User</a>



                    <table class="table" id="user-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Username</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Hak Akses</th>
                                <th>Aksi</th> <!-- Kolom Aksi tetap ada di tabel -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($users as $user) : ?>
                                <tr>
                                    <td><?= $user['id']; ?></td>
                                    <td><?= $user['username']; ?></td>
                                    <td><?= $user['nama']; ?></td>
                                    <td><?= $user['alamat']; ?></td>
                                    <td><?= $user['hak_akses']; ?></td>
                                    <td>
                                        <a href="<?= base_url('/user/edit/' . $user['id']) ?>" class="btn btn-warning btn-sm">Edit</a>
                                        <a href="<?= base_url('/user/delete/' . $user['id']) ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus user ini?')">Hapus</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.5/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.bootstrap5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/pdfmake@0.1.66/build/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/pdfmake@0.1.66/build/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.print.min.js"></script>
    <script>
        $(document).ready(function() {
            var table = $('#user-table').DataTable({
                "columnDefs": [{
                    "targets": -1, // Mengarahkan ke kolom terakhir (Aksi)
                    "orderable": false // Menonaktifkan fitur sorting untuk kolom ini
                }],
                "dom": 'Blfrtip',
                "buttons": [{
                        extend: 'pdfHtml5',
                        text: '<i class="far fa-file-pdf"></i> PDF',
                        exportOptions: {
                            columns: [0, 1, 2, 3] // Ekspor kolom ID, Username, Nama, Alamat
                        }
                    },
                    {
                        extend: 'excelHtml5',
                        text: '<i class="far fa-file-excel"></i> Excel',
                        exportOptions: {
                            columns: [0, 1, 2, 3] // Ekspor kolom ID, Username, Nama, Alamat
                        }
                    },
                    {
                        extend: 'csvHtml5',
                        text: '<i class="far fa-file-alt"></i> CSV',
                        exportOptions: {
                            columns: [0, 1, 2, 3] // Ekspor kolom ID, Username, Nama, Alamat
                        }
                    },
                    {
                        extend: 'print',
                        text: '<i class="fas fa-print"></i> Print',
                        exportOptions: {
                            columns: [0, 1, 2, 3] // Ekspor kolom ID, Username, Nama, Alamat
                        }
                    }
                ]
            });

            $('#print-button').on('click', function() {
                table.button('.buttons-print').trigger();
            });

            $('#export-pdf').on('click', function(e) {
                e.preventDefault();
                table.button('.buttons-pdf').trigger();
            });

            $('#export-excel').on('click', function(e) {
                e.preventDefault();
                table.button('.buttons-excel').trigger();
            });

            $('#export-csv').on('click', function(e) {
                e.preventDefault();
                table.button('.buttons-csv').trigger();
            });
        });
    </script>
</body>

</html>