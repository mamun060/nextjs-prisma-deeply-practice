-- CreateTable
CREATE TABLE `user` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(50) NOT NULL,
    `otp` VARCHAR(10) NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `user_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customerProfile` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `customerName` VARCHAR(100) NOT NULL,
    `customerAddress` VARCHAR(500) NOT NULL,
    `customerCity` VARCHAR(100) NOT NULL,
    `customerState` VARCHAR(100) NOT NULL,
    `customerPostCode` VARCHAR(100) NOT NULL,
    `customerCountry` VARCHAR(100) NOT NULL,
    `customerPhone` VARCHAR(100) NOT NULL,
    `customerFazx` VARCHAR(100) NOT NULL,
    `shipName` VARCHAR(100) NOT NULL,
    `shipAddress` VARCHAR(100) NOT NULL,
    `shipCity` VARCHAR(100) NOT NULL,
    `shipState` VARCHAR(100) NOT NULL,
    `shipPostCode` VARCHAR(100) NOT NULL,
    `shipCountry` VARCHAR(100) NOT NULL,
    `shipPhone` VARCHAR(100) NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `customerProfile_userId_key`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `brand` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `brandName` VARCHAR(50) NOT NULL,
    `brandImg` VARCHAR(300) NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `categories` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `categoryName` VARCHAR(100) NOT NULL,
    `categoryImg` VARCHAR(300) NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `products` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `short_des` VARCHAR(300) NOT NULL,
    `price` VARCHAR(50) NOT NULL,
    `discount` BOOLEAN NOT NULL,
    `discount_price` VARCHAR(50) NOT NULL,
    `image` VARCHAR(300) NOT NULL,
    `stock` BOOLEAN NOT NULL,
    `start` DOUBLE NOT NULL,
    `remark` ENUM('popular', 'new', 'top', 'special', 'trending', 'regular') NOT NULL,
    `brandId` BIGINT UNSIGNED NOT NULL,
    `categoryId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `productDetails` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `img1` VARCHAR(200) NOT NULL,
    `img2` VARCHAR(200) NOT NULL,
    `img3` VARCHAR(200) NOT NULL,
    `img4` VARCHAR(200) NOT NULL,
    `img5` VARCHAR(200) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `color` VARCHAR(200) NOT NULL,
    `size` VARCHAR(200) NOT NULL,
    `productId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `productDetails_productId_key`(`productId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `productSliders` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `shortDes` VARCHAR(200) NOT NULL,
    `price` VARCHAR(100) NOT NULL,
    `image` VARCHAR(200) NOT NULL,
    `productId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `productSliders_productId_key`(`productId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `productWishes` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `productId` BIGINT UNSIGNED NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `udpatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `productCarts` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `userId` BIGINT UNSIGNED NOT NULL,
    `productId` BIGINT UNSIGNED NOT NULL,
    `color` VARCHAR(200) NOT NULL,
    `size` VARCHAR(200) NOT NULL,
    `qty` VARCHAR(200) NOT NULL,
    `price` VARCHAR(200) NOT NULL,
    `createAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `productReview` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(1000) NOT NULL,
    `rating` VARCHAR(10) NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `productId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sllcommerzAccounts` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `storeId` VARCHAR(255) NOT NULL,
    `storePassword` VARCHAR(255) NOT NULL,
    `currency` VARCHAR(255) NOT NULL,
    `successUrl` VARCHAR(255) NOT NULL,
    `failUrl` VARCHAR(255) NOT NULL,
    `cancelUrl` VARCHAR(255) NOT NULL,
    `ipnUrl` VARCHAR(255) NOT NULL,
    `initUrl` VARCHAR(255) NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `policies` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` ENUM('about', 'refund', 'terms', 'how_to_buy', 'contact', 'complain') NOT NULL,
    `description` LONGTEXT NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `invoices` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `total` VARCHAR(50) NOT NULL,
    `vat` VARCHAR(50) NOT NULL,
    `payable` VARCHAR(50) NOT NULL,
    `customerDetails` VARCHAR(500) NOT NULL,
    `shipmentDetails` VARCHAR(500) NOT NULL,
    `transectionId` VARCHAR(500) NOT NULL,
    `valId` VARCHAR(500) NOT NULL,
    `deliveryStatus` ENUM('Pending', 'Processing', 'Completed') NOT NULL,
    `paymentStatus` VARCHAR(255) NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `productInvoices` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `qty` VARCHAR(50) NOT NULL,
    `salePrice` VARCHAR(50) NOT NULL,
    `invoiceId` BIGINT UNSIGNED NOT NULL,
    `productId` BIGINT UNSIGNED NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `customerProfile` ADD CONSTRAINT `customerProfile_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_brandId_fkey` FOREIGN KEY (`brandId`) REFERENCES `brand`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productDetails` ADD CONSTRAINT `productDetails_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productSliders` ADD CONSTRAINT `productSliders_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productWishes` ADD CONSTRAINT `productWishes_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productWishes` ADD CONSTRAINT `productWishes_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productCarts` ADD CONSTRAINT `productCarts_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productCarts` ADD CONSTRAINT `productCarts_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productReview` ADD CONSTRAINT `productReview_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productReview` ADD CONSTRAINT `productReview_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `invoices` ADD CONSTRAINT `invoices_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productInvoices` ADD CONSTRAINT `productInvoices_invoiceId_fkey` FOREIGN KEY (`invoiceId`) REFERENCES `invoices`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productInvoices` ADD CONSTRAINT `productInvoices_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productInvoices` ADD CONSTRAINT `productInvoices_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
