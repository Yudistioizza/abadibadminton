<?php
include "../koneksi.php";
$id = $_GET['id'];
$proses = mysqli_query($koneksi, "DELETE from booking WHERE id = '" . $id . "'")
    or die(mysqli_error($koneksi));
if ($proses) {
    echo "<script>
                            alert('Data Berhasil Dihapus');
                            window.location.href = 'jadwal_book.php';
                          </script>";
} else
    echo "<script>
                                alert('Data Gagal Dihapus');
                                window.location.href = 'jadwal_book.php';
                            </script>";
?>