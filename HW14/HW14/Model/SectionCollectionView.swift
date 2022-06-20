//
//  SectionCollectionView.swift
//  HW14
//
//  Created by  Евгений on 10.06.2022.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case myAlbumCell(model: FotoMYAlbum)
    case commonAlbumCell(model: FotoCommonAlbums)
    case typeMediaCell(model: FotoTypeMedia)
    case othersCell(model: FotoOthers)
}

struct FotoMYAlbum {
    let title: String
    let icon: UIImage?
    let countFoto: String
}

struct FotoCommonAlbums {
    let title: String
    let icon: UIImage?
    let who: String
}

struct FotoPeopleAndPlace {
    let title: String
    let icon: UIImage?
    let countFoto: String
}

struct FotoTypeMedia {
    let title: String
    let icon: UIImage?
    let countFoto: String
}

struct FotoOthers {
    let title: String
    let icon: UIImage?
    let countFoto: String
}

extension Section {
    static func getSections() -> [Section] {
        return [
            Section(title: "Мои альбомы", options: [
                .myAlbumCell(model: FotoMYAlbum(title: "Недавнее", icon: UIImage(named: "1"), countFoto: "122")),
                .myAlbumCell(model: FotoMYAlbum(title: "Избранное", icon: UIImage(named: "2"), countFoto: "15")),
                .myAlbumCell(model: FotoMYAlbum(title: "Отпуск", icon: UIImage(named: "3"), countFoto: "22")),
                .myAlbumCell(model: FotoMYAlbum(title: "Стикеры", icon: UIImage(named: "4"), countFoto: "111")),
                .myAlbumCell(model: FotoMYAlbum(title: "Работа", icon: UIImage(named: "6"), countFoto: "17")),
                .myAlbumCell(model: FotoMYAlbum(title: "Разное", icon: UIImage(named: "7"), countFoto: "18")),
                .myAlbumCell(model: FotoMYAlbum(title: "Telegram", icon: UIImage(named: "8"), countFoto: "212")),
                .myAlbumCell(model: FotoMYAlbum(title: "WhatsApp", icon: UIImage(named: "9"), countFoto: "189")),
                .myAlbumCell(model: FotoMYAlbum(title: "Instagram", icon: UIImage(named: "10"), countFoto: "132"))
            ]),
            Section(title: "Общие альбомы", options: [
                .commonAlbumCell(model: FotoCommonAlbums(title: "Все", icon: UIImage(named: "11"), who: "От Вас")),
                .commonAlbumCell(model: FotoCommonAlbums(title: "Недавнее", icon: UIImage(named: "12"), who: "От Вас")),
                .commonAlbumCell(model: FotoCommonAlbums(title: "Избранное", icon: UIImage(named: "13"), who: "От Вас")),
                .commonAlbumCell(model: FotoCommonAlbums(title: "Работа", icon: UIImage(named: "14"), who: "От Вас"))

            ]),
            Section(title: "Люди и места", options: [
                .peoplePlaceCell(model: FotoPeopleAndPlace(title: "Люди", icon: UIImage(named: "peopleAlbum"), countFoto: "13")),
                .peoplePlaceCell(model: FotoPeopleAndPlace(title: "Места", icon: UIImage(named: "placeAlbum"), countFoto: "10 297"))
            ]),
            Section(title: "Типы медиафайлов", options: [
                .typeMediaCell(model: FotoTypeMedia(title: "Видео", icon: UIImage(systemName: "video"), countFoto: "1 025")),
                .typeMediaCell(model: FotoTypeMedia(title: "Селфи", icon: UIImage(systemName: "person.crop.square"), countFoto: "1 375")),
                .typeMediaCell(model: FotoTypeMedia(title: "Фото Live Photos", icon: UIImage(systemName: "livephoto"), countFoto: "254")),
                .typeMediaCell(model: FotoTypeMedia(title: "Портреты", icon: UIImage(systemName: "cube"), countFoto: "15")),
                .typeMediaCell(model: FotoTypeMedia(title: "Панорамы", icon: UIImage(systemName: "pano"), countFoto: "8")),
                .typeMediaCell(model: FotoTypeMedia(title: "Таймлапс", icon: UIImage(systemName: "aqi.medium"), countFoto: "6")),
                .typeMediaCell(model: FotoTypeMedia(title: "Замедленно", icon: UIImage(systemName: "aqi.low"), countFoto: "52")),
                .typeMediaCell(model: FotoTypeMedia(title: "Серии", icon: UIImage(systemName: "square.stack.3d.down.right"), countFoto: "15")),
                .typeMediaCell(model: FotoTypeMedia(title: "Снимки экрана", icon: UIImage(systemName: "camera.viewfinder"), countFoto: "1 228")),
                .typeMediaCell(model: FotoTypeMedia(title: "Записи экрана", icon: UIImage(systemName: "smallcircle.filled.circle"), countFoto: "17")),
                .typeMediaCell(model: FotoTypeMedia(title: "Анимированные", icon: UIImage(systemName: "square.stack.3d.forward.dottedline"), countFoto: "7")),
            ]),
            Section(title: "Другое", options: [
                .othersCell(model: FotoOthers(title: "Импортированные", icon: UIImage(systemName: "square.and.arrow.down"), countFoto: "224")),
                .othersCell(model: FotoOthers(title: "Не удается выгрузить", icon: UIImage(systemName: "exclamationmark.icloud"), countFoto: "9")),
                .othersCell(model: FotoOthers(title: "Скрытые", icon: UIImage(systemName: "eye.slash"), countFoto: "0")),
                .othersCell(model: FotoOthers(title: "Недавно удаленные", icon: UIImage(systemName: "trash"), countFoto: "23")),
            ])
        ]
    }
}
