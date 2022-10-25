# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "cleaning database"
Message.destroy_all
GardenPlant.destroy_all
Plant.destroy_all
Categorie.destroy_all
Garden.destroy_all
User.destroy_all

User.create(email: 'test@gmail.com', password: '123456')

puts "creating garden"

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267669/1fb1d6e69cafebd7b6884e3b7a13838c_vl1hrz.jpg")
plant1 = Plant.new(name: "Mandarin", description:"lorem ipsum", category:"fruit")
plant1.photo.attach(io: file, filename: "Mandarin.jpg", content_type: "image/jpg")
plant1.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267686/fc978a8aeab608b13a2ef8214a48daca_llzbqp.jpg")
plant2 = Plant.new(name: "litchee", description:"lorem ipsum", category:"fruit")
plant2.photo.attach(io: file, filename: "litchee.jpg", content_type: "image/jpg")
plant2.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267721/75515e14b04666e60d3df1b32dfc7d31_c97fja.jpg")
plant3 = Plant.new(name: "star fruit", description:"lorem ipsum", category:"fruit")
plant3.photo.attach(io: file, filename: "star_fruit.jpg", content_type: "image/jpg")
plant3.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267704/225305102_4505699912788113_1505443211150085412_n-300x300_xiqxoe.jpg")
plant4 = Plant.new(name: "longan", description:"lorem ipsum", category:"fruit")
plant4.photo.attach(io: file, filename: "longan.jpg", content_type: "image/jpg")
plant4.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267743/f0f042cf501ccdff441cde78112466e5_ncmubt.jpg")
plant5 = Plant.new(name: "aplpe", description:"lorem ipsum", category:"fruit")
plant5.photo.attach(io: file, filename: "aplpe.jpg", content_type: "image/jpg")
plant5.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267762/f87136c3cfbd8a763c3c94cd396883d9_zor0df.jpg")
plant6 = Plant.new(name: "pommegrenade", description:"lorem ipsum", category:"fruit")
plant6.photo.attach(io: file, filename: "pommegrenade.jpg", content_type: "image/jpg")
plant6.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267776/6f5e29876c0a2b9a8b2d5dc3bbdec15f_teu0ng.jpg")
plant7 = Plant.new(name: "strawberry", description:"lorem ipsum", category:"fruit")
plant7.photo.attach(io: file, filename: "strawberry.jpg", content_type: "image/jpg")
plant7.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267787/f51f048cc7462a6ff8b68dce01b30c66_dceb0w.jpg")
plant8 = Plant.new(name: "water melon", description:"lorem ipsum", category:"fruit")
plant8.photo.attach(io: file, filename: "water_melon.jpg", content_type: "image/jpg")
plant8.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267802/5e32f088243fc309b10e632e5f482cd3_wbfnn7.jpg")
plant9 = Plant.new(name: "Pinapple", description:"lorem ipsum", category:"fruit")
plant9.photo.attach(io: file, filename: "Pinapple.jpg", content_type: "image/jpg")
plant9.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267824/1000_F_91680839_JwEVYgOYVAqZTjASnkZTnsAgt3yM45ED_jdvpwu.jpg")
plant10 = Plant.new(name: "pear", description:"lorem ipsum", category:"fruit")
plant10.photo.attach(io: file, filename: "pear.jpg", content_type: "image/jpg")
plant10.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267813/1e3dbd284a9eb7c3e939622bd0c4f422_obie6d.jpg")
plant11 = Plant.new(name: "grape", description:"lorem ipsum", category:"fruit")
plant11.photo.attach(io: file, filename: "grape.jpg", content_type: "image/jpg")
plant11.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267839/8a88aacd48b3eabbf7cba3f6110128b1_xns6af.jpg")
plant12 = Plant.new(name: "potato", description:"lorem ipsum", category:"vegetable")
plant12.photo.attach(io: file, filename: "potato.jpg", content_type: "image/jpg")
plant12.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267850/b48bd1329d34f40610561657b433a65b_xtqz0y.jpg")
plant13 = Plant.new(name: "cocumber", description:"lorem ipsum", category:"vegetable")
plant13.photo.attach(io: file, filename: "cocumber.jpg", content_type: "image/jpg")
plant13.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267863/eb3b4e976d45ca902904ac28650717af_w73dsr.jpg")
plant14 = Plant.new(name: "cabbage", description:"lorem ipsum", category:"vegetable")
plant14.photo.attach(io: file, filename: "cabbage.jpg", content_type: "image/jpg")
plant14.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267875/d50180be5f8b83eb52f1aa7e1719fc7b_tkei6a.jpg")
plant15 = Plant.new(name: "lettuce", description:"lorem ipsum", category:"vegetable")
plant15.photo.attach(io: file, filename: "lettuce.jpg", content_type: "image/jpg")
plant15.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267890/carrots-in-soil_pylglk.jpg")
plant16 = Plant.new(name: "Carrots", description:"lorem ipsum", category:"vegetable")
plant16.photo.attach(io: file, filename: "Carrots.jpg", content_type: "image/jpg")
plant16.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267962/240_F_169305319_ocVsDjvATOkwU1vnhXJcRGTzVehRVSr9_dq8zzw.jpg")
plant17 = Plant.new(name: "Capcicum", description:"lorem ipsum", category:"vegetable")
plant17.photo.attach(io: file, filename: "Capcicum.jpg", content_type: "image/jpg")
plant17.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267940/1000_F_240969248_tL666JKRYq8ecSiVTEehEesDW7Ss9YTt_xs4kes.jpg")
plant18 = Plant.new(name: "Eggplant", description:"lorem ipsum", category:"vegetable")
plant18.photo.attach(io: file, filename: "Eggplant.jpg", content_type: "image/jpg")
plant18.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267975/240_F_65127874_BdEFCjM2tSqB1FdA8NnE5IF6ozio95VA_pldl0j.jpg")
plant19 = Plant.new(name: "spinach", description:"lorem ipsum", category:"vegetable")
plant19.photo.attach(io: file, filename: "spinach.jpg", content_type: "image/jpg")
plant19.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666267993/1000_F_277530247_iWPLqhh85Zsmfasd3w15NzmiZrX6U6W2_fvunde.jpg")
plant20 = Plant.new(name: "Mint", description:"lorem ipsum", category:"vegetable")
plant20.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")

plant20.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268003/fe61b5adb4f765f51ecc2fc15927d8c7_orhrnw.jpg")
plant21 = Plant.new(name: "Marigold", description:"lorem ipsum", category:"flower")
plant21.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")
plant21.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268035/0a16e41dc98a48c11555375fcc9a1f0f_oethwk.png")
plant22 = Plant.new(name: "Roses", description:"lorem ipsum", category:"flower")
plant22.photo.attach(io: file, filename: ".jpg", content_type: "image/jpg")
plant22.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268050/756e3e7e27f4278fc86d4d950c8a85fd_xluj6c.png")
plant23 = Plant.new(name: "Hibiscus", description:"lorem ipsum", category:"flower")
plant23.photo.attach(io: file, filename: "Roses.png", content_type: "image/jpg")
plant23.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268080/3ce9f5af57c97bfdcd53cdb878c48ce9_nyd7u5.jpg")
plant24 = Plant.new(name: "Jasmin", description:"lorem ipsum", category:"flower")
plant24.photo.attach(io: file, filename: "Jasmin.jpg", content_type: "image/jpg")
plant24.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268111/Bridal_Sunblaze_C2_AE_004_urhupx.jpg")
plant25 = Plant.new(name: "White Roses", description:"lorem ipsum", category:"flower")
plant25.photo.attach(io: file, filename: "White_Roses.jpg", content_type: "image/jpg")
plant25.save

file = URI.open("https://res.cloudinary.com/dfz9nuknq/image/upload/v1666268122/red-rose_jnq4yz.jpg")
plant26 = Plant.new(name: "Red Roses", description:"lorem ipsum", category:"flower")
plant26.photo.attach(io: file, filename: "Red_Roses.jpg", content_type: "image/jpg")
plant26.save
