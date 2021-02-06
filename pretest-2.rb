begin
  print "Masukan jumlah data yang ingin di inputkan : "
  total = gets.chomp
  total = Integer(total)

  if total == 0
    raise
  end

  $array = []
  total.times do |index|
    print "Masukan data ke #{index + 1} : "
    $array << gets.chomp.to_i
  end

  puts "\nIngin melihat ganjil atau genap ?"
  print "Tekan 1 (GANJIL) dan 2 (GENAP) : "
  choice = gets.chomp.to_i
  if choice == 1
    $proccess_value = $array.reject  { |n| n % 2 == 0 }
    puts "Memproses untuk memilah data ganjil berhasil !"
  elsif choice == 2
    $proccess_value = $array.map{ |n| n if n % 2 == 0 }.compact
    puts "Memproses untuk memilah data genap berhasil !"
  else
    raise
  end

  puts "\nData yang tersedia setelah pemrosesan terdapat sebanyak #{$proccess_value.length()} data\n"
  print "Berapa data yang ingin kamu lihat ? "
  show = gets.chomp

  puts "\nHasil : #{$proccess_value[0..show.to_i - 1].join(", ")}"
  raise
rescue
  puts "\nMasukan hanya berupa angka dengan jumlah lebih dari 0\n\n"
  puts "Lanjutkan ?"
  print "Tekan 1 (LANJUTKAN) dan 0 (KELUAR) : "
  user_exit = gets.chomp

  if user_exit == '1'
    retry
  else
    puts "\n\nTerima Kasih, Sampai berjumpa kembali"
  end
end
