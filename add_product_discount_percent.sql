alter table public.products
  add column if not exists discount_percent numeric(5,2) not null default 2
  check (discount_percent >= 0 and discount_percent <= 100);

comment on column public.products.discount_percent is
  'Diskon persentase untuk harga retail katalog; laba dan biaya tetap hanya untuk admin.';
