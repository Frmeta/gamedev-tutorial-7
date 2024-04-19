Proses mengerjakan:
- Pertama, tama saya mengikuti semua tutorial yang ada pada website https://csui-game-development.github.io/tutorials/tutorial-7/.
- Untuk membuat mechanic sprinting, saya membuat input map baru bernama `"sprint"` berupa tombol `Ctrl`. Kemudian ketika player berjalan, input tersebut diperiksa, apabila berjalan sambil menekan tombol `Ctrl`, kecepatan movement player akan ditingkatkan. Selain itu fov camera juga diubah menjadi lebih rendah untuk memperjelas state player sedang berlari
- Untuk membuat mechanic crouching, saya membuat input map baru bernama `crouch` berupa tombol `Shift kiri`. Untuk membuat player tampak menunduk ketika crouching, saya mengatur nilai scale.y dari player. Untuk membuat player merasakan sedang crouching, saya mengurangi kecepatan pergerakan player ketika menekan tombol crouch.
- Untuk membuat mechanic pick up item, saya menggunakan mechanic interact dari tutorial kemudian membuat script baru bernama `Pickable` yang extends dari `Interactable`. Apabila player mengarahkan mousenya ke objek dan menekan tombol E, maka objek tersebut akan diambil. Caranya dengan memanggil `queue_free()`, serta memanggil function yang menerima argumen String berupa nama item.
- Untuk membuat mechanic inventory, saya menggunakan array of String yang disimpan di script `Player.gd` kemudian menggunakan resource `slot.gd` untuk menyimpan informasi tentang item yang ada (berupa Texture2D untuk ditampilkan di slot inventory dan PackedScene untuk diletakkan kembali di scene). Saya menggunakan inventory dengan 3 slot.
- Untuk membuat ability player untuk melempar objek kembali, saya menyimpan variable `selected_slot` untuk menyimpan nomor indeks slot yang sedang dipegang player, variabel ini dikontrol oleh scroll wheel mouse. Apabila player menekan tombol Left Mouse Button, maka objek yang dipegang player akan dilempar sesuai arah camera menggunakan `head.basis.z`