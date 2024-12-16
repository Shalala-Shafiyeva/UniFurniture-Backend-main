<?php

use App\Http\Controllers\Dashboard\AboutController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\BasketController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CharasteristicController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\ExellenceServiceController;
use App\Http\Controllers\FAQController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\OptionController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PromotionSliderController;
use App\Http\Controllers\ServiceArticleController;
use App\Http\Controllers\ServiceArticleTitleController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\UserAddressController;
use App\Http\Controllers\UserController;
use App\Models\ExellenceService;
use App\Models\PromotionSlider;
use App\Models\ServiceArticle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/token', function () {
    $token = request()->user()->createToken('unifurniture');
    return response()->json([
        'token' => $token->plainTextToken
    ]);
});

//authentification olan user-ler daxil ola biler
//Route::middleware('auth:sanctum')->group(function () {
//Route::get('/user', [ProfileController::class, 'user']);

//basket

//DASHBOARD - sadece admin-ler daxil ola biler
//Route::middleware('isAdmin')->group(function () {
//Route::group(['prefix' => 'dashboard'], function () {
//ABOUT PAGE
//Route::group(['prefix' => 'about'], function () {
// Route::group(['prefix' => 'banner'], function () {
//     Route::get('/', [AboutController::class, 'getBanners']);
//     Route::get('/{id}', [AboutController::class, 'getBanner']);
//     Route::post('/create', [AboutController::class, 'createBanner']);
//     Route::delete('/delete/{id}', [AboutController::class, 'deleteBanner']);
//     Route::post('/edit/{id}', [AboutController::class, 'editBanner']);
//     Route::post('/publish/{id}', [AboutController::class, 'publishBanner']);
// });

// Route::group(['prefix' => 'paralax'], function () {
//     Route::get('/', [AboutController::class, 'getParalaxes']);
//     Route::get('/{id}', [AboutController::class, 'getParalax']);
//     Route::post('/create', [AboutController::class, 'createParalax']);
//     Route::delete('/delete/{id}', [AboutController::class, 'deleteParalax']);
//     Route::post('/edit/{id}', [AboutController::class, 'editParalax']);
//     Route::post('/publish/{id}', [AboutController::class, 'publishParalax']);
// });

// Route::group(['prefix' => 'team-title'], function () {
//     Route::get('/', [AboutController::class, 'getTeamTitles']);
//     Route::get('/{id}', [AboutController::class, 'getTeamTitle']);
//     Route::post('/create', [AboutController::class, 'createTeamTitle']);
//     Route::delete('/delete/{id}', [AboutController::class, 'deleteTeamTitle']);
//     Route::post('/edit/{id}', [AboutController::class, 'editTeamTitle']);
//     Route::post('/publish/{id}', [AboutController::class, 'publishTitle']);
// });

// Route::group(['prefix' => 'team-member'], function () {
//     Route::get('/', [AboutController::class, 'getTeamMembers']);
//     Route::get('/{id}', [AboutController::class, 'getTeamMember']);
//     Route::post('/create', [AboutController::class, 'createTeamMember']);
//     Route::delete('/delete/{id}', [AboutController::class, 'deleteTeamMember']);
//     Route::post('/edit/{id}', [AboutController::class, 'editTeamMember']);
// });

// Route::group(['prefix' => 'number-title'], function () {
//     Route::get('/', [AboutController::class, 'getNumberTitles']);
//     Route::get('/{id}', [AboutController::class, 'getNumberTitle']);
//     Route::post('/create', [AboutController::class, 'createNumberTitle']);
//     Route::delete('/delete/{id}', [AboutController::class, 'deleteNumberTitle']);
//     Route::post('/edit/{id}', [AboutController::class, 'editNumberTitle']);
//     Route::post('/publish/{id}', [AboutController::class, 'publishNumberTitle']);
// });

// Route::group(['prefix' => 'number-subtitle'], function () {
//     Route::get('/', [AboutController::class, 'getNumberSubtitles']);
//     Route::get('/{id}', [AboutController::class, 'getNumberSubtitle']);
//     Route::post('/create', [AboutController::class, 'createNumberSubtitle']);
//     Route::delete('/delete/{id}', [AboutController::class, 'deleteNumberSubtitle']);
//     Route::post('/edit/{id}', [AboutController::class, 'editNumberSubtitle']);
// });
//});
//PRODUCT
//Route::group(['prefix' => 'product'], function () {

// Route::get('/', [ProductController::class, 'index']);
// Route::get('/{id}', [ProductController::class, 'show']);
// Route::post('/store', [ProductController::class, 'store']);
// Route::delete('/delete/{id}', [ProductController::class, 'delete']);
// Route::post('/edit/{id}', [ProductController::class, 'update']);
// Route::post('/publish/{id}', [ProductController::class, 'publish']);
// Route::post('/unpublish/{id}', [ProductController::class, 'unpublish']);

//bele ic ice islemedi deye cole cixardim
// Route::group(['prefix' => 'type'], function () {
//     Route::get('/', [TypeController::class, 'index']);
//     Route::get('/{id}', [TypeController::class, 'show']);
//     Route::post('/store', [TypeController::class, 'store']);
//     Route::delete('/delete/{id}', [TypeController::class, 'delete']);
//     Route::post('/edit/{id}', [TypeController::class, 'update']);
// });

// Route::group(['prefix' => 'category'], function () {
//     Route::get('/', [CategoryController::class, 'index']);
//     Route::get('/{id}', [CategoryController::class, 'show']);
//     Route::post('/store', [CategoryController::class, 'store']);
//     Route::delete('/delete/{id}', [CategoryController::class, 'delete']);
//     Route::post('/edit/{id}', [CategoryController::class, 'update']);
// });

// Route::group(['prefix' => 'color'], function () {
//     Route::get('/', [ColorController::class, 'index']);
//     Route::get('/{id}', [ColorController::class, 'show']);
//     Route::post('/store', [ColorController::class, 'store']);
//     Route::delete('/delete/{id}', [ColorController::class, 'delete']);
//     Route::post('/edit/{id}', [ColorController::class, 'update']);
// });

// Route::group(['prefix' => 'characteristic'], function () {
//     Route::get('/', [CharasteristicController::class, 'index']);
//     Route::get('/{id}', [CharasteristicController::class, 'show']);
//     Route::post('/store', [CharasteristicController::class, 'store']);
//     Route::delete('/delete/{id}', [CharasteristicController::class, 'delete']);
//     Route::post('/edit/{id}', [CharasteristicController::class, 'update']);
// });
//});
//});
//});
//});

//Adminlerin daxil ola bildeyi linkler
Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'product'], function () {
        Route::post('/store', [ProductController::class, 'store']);
        Route::delete('/delete/{id}', [ProductController::class, 'delete']);
        Route::post('/edit/{id}', [ProductController::class, 'update']);
        Route::post('/publish/{id}', [ProductController::class, 'publish']);
        Route::post('/unpublish/{id}', [ProductController::class, 'unpublish']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'type'], function () {
        Route::post('/store', [TypeController::class, 'store']);
        Route::delete('/delete/{id}', [TypeController::class, 'delete']);
        Route::post('/edit/{id}', [TypeController::class, 'update']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'category'], function () {
        Route::post('/store', [CategoryController::class, 'store']);
        Route::delete('/delete/{id}', [CategoryController::class, 'delete']);
        Route::post('/edit/{id}', [CategoryController::class, 'update']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'color'], function () {
        Route::get('/', [ColorController::class, 'index']);
        Route::get('/{id}', [ColorController::class, 'show']);
        Route::post('/store', [ColorController::class, 'store']);
        Route::delete('/delete/{id}', [ColorController::class, 'delete']);
        Route::post('/edit/{id}', [ColorController::class, 'update']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'characteristic'], function () {
        Route::post('/store', [CharasteristicController::class, 'store']);
        Route::delete('/delete/{id}', [CharasteristicController::class, 'delete']);
        Route::post('/edit/{id}', [CharasteristicController::class, 'update']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-banner'], function () {
        Route::get('/', [AboutController::class, 'getBanners']);
        Route::get('/{id}', [AboutController::class, 'getBanner']);
        Route::post('/create', [AboutController::class, 'createBanner']);
        Route::delete('/delete/{id}', [AboutController::class, 'deleteBanner']);
        Route::post('/edit/{id}', [AboutController::class, 'editBanner']);
        Route::post('/publish/{id}', [AboutController::class, 'publishBanner']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-paralax'], function () {
        Route::get('/', [AboutController::class, 'getParalaxes']);
        Route::get('/{id}', [AboutController::class, 'getParalax']);
        Route::post('/create', [AboutController::class, 'createParalax']);
        Route::delete('/delete/{id}', [AboutController::class, 'deleteParalax']);
        Route::post('/edit/{id}', [AboutController::class, 'editParalax']);
        Route::post('/publish/{id}', [AboutController::class, 'publishParalax']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-team-title'], function () {
        Route::get('/', [AboutController::class, 'getTeamTitles']);
        Route::get('/{id}', [AboutController::class, 'getTeamTitle']);
        Route::post('/create', [AboutController::class, 'createTeamTitle']);
        Route::delete('/delete/{id}', [AboutController::class, 'deleteTeamTitle']);
        Route::post('/edit/{id}', [AboutController::class, 'editTeamTitle']);
        Route::post('/publish/{id}', [AboutController::class, 'publishTitle']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-team-member'], function () {
        Route::get('/', [AboutController::class, 'getTeamMembers']);
        Route::get('/{id}', [AboutController::class, 'getTeamMember']);
        Route::post('/create', [AboutController::class, 'createTeamMember']);
        Route::delete('/delete/{id}', [AboutController::class, 'deleteTeamMember']);
        Route::post('/edit/{id}', [AboutController::class, 'editTeamMember']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-number-title'], function () {
        Route::get('/', [AboutController::class, 'getNumberTitles']);
        Route::get('/{id}', [AboutController::class, 'getNumberTitle']);
        Route::post('/create', [AboutController::class, 'createNumberTitle']);
        Route::delete('/delete/{id}', [AboutController::class, 'deleteNumberTitle']);
        Route::post('/edit/{id}', [AboutController::class, 'editNumberTitle']);
        Route::post('/publish/{id}', [AboutController::class, 'publishNumberTitle']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-number-subtitle'], function () {
        Route::get('/', [AboutController::class, 'getNumberSubtitles']);
        Route::get('/{id}', [AboutController::class, 'getNumberSubtitle']);
        Route::post('/create', [AboutController::class, 'createNumberSubtitle']);
        Route::delete('/delete/{id}', [AboutController::class, 'deleteNumberSubtitle']);
        Route::post('/edit/{id}', [AboutController::class, 'editNumberSubtitle']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'option'], function () {
        Route::post('/store', [OptionController::class, 'store']);
        Route::delete('/delete/{id}', [OptionController::class, 'delete']);
        Route::post('/edit/{id}', [OptionController::class, 'update']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'faqs'], function () {
        Route::get('/', [FAQController::class, 'index']);
        Route::get('/{id}', [FAQController::class, 'show']);
        Route::post('/store', [FAQController::class, 'store']);
        Route::post('/edit/{id}', [FAQController::class, 'update']);
        Route::delete('/delete/{id}', [FAQController::class, 'destroy']);
        Route::post('/publishFaq/{id}', [FAQController::class, 'publishFaq']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'about-gallery'], function () {
        Route::post('/create', [GalleryController::class, 'store']);
        Route::get('/delete/{id}', [GalleryController::class, 'destroy']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'service-article-title'], function () {
        Route::get('/', [ServiceArticleTitleController::class, 'index']);
        Route::get('/{id}', [ServiceArticleTitleController::class, 'show']);
        Route::post('/create', [ServiceArticleTitleController::class, 'store']);
        Route::delete('/delete/{id}', [ServiceArticleTitleController::class, 'destroy']);
        Route::post('/edit/{id}', [ServiceArticleTitleController::class, 'update']);
        Route::post('/publish/{id}', [ServiceArticleTitleController::class, 'publishTitle']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'service-article'], function () {
        Route::post('/create', [ServiceArticleController::class, 'store']);
        Route::delete('/delete/{id}', [ServiceArticleController::class, 'destroy']);
        Route::post('/edit/{id}', [ServiceArticleController::class, 'update']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'shop-exellence'], function () {
        Route::get('/', [ExellenceServiceController::class, 'index']);
        Route::get('/{id}', [ExellenceServiceController::class, 'show']);
        Route::post('/create', [ExellenceServiceController::class, 'store']);
        Route::delete('/delete/{id}', [ExellenceServiceController::class, 'delete']);
        Route::post('/edit/{id}', [ExellenceServiceController::class, 'update']);
        Route::post('/publish/{id}', [ExellenceServiceController::class, 'publish']);
    });
});

Route::middleware(['auth:sanctum', "isAdmin"])->group(function () {
    Route::group(['prefix' => 'promotion-slider'], function () {
        Route::get('/', [PromotionSliderController::class, 'index']);
        Route::get('/{id}', [PromotionSliderController::class, 'show']);
        Route::post('/create', [PromotionSliderController::class, 'store']);
        Route::delete('/delete/{id}', [PromotionSliderController::class, 'delete']);
        Route::post('/edit/{id}', [PromotionSliderController::class, 'update']);
        Route::post('/publish/{id}', [PromotionSliderController::class, 'publish']);
    });
});


//authentification olan user-ler daxil ola biler
Route::middleware('auth:sanctum')->group(function () {
    Route::group(['prefix' => 'user'], function () {
        Route::get('/index', [UserController::class, 'index']);
        Route::post('/edit', [UserController::class, 'editPersonalInfo']);
    });

    Route::group(['prefix' => 'address'], function () {
        Route::get('/index', [UserAddressController::class, 'index']);
        Route::get('/show/{id}', [UserAddressController::class, 'show']);
        Route::post('/store', [UserAddressController::class, 'store']);
        Route::post('/edit/{id}', [UserAddressController::class, 'update']);
        Route::get('/delete/{id}', [UserAddressController::class, 'delete']);
        Route::get('/default/{id}', [UserAddressController::class, 'default']);
        Route::get('showDefaultAddress', [UserAddressController::class, 'showDefaultAddress']);
    });

    Route::post('/product/{productId}/addView', [ProductController::class, 'addView']);
    Route::post('/product/{productId}/rate', [ProductController::class, 'productRating']);

    Route::group(['prefix' => 'basket'], function () {
        Route::get('/index', [BasketController::class, 'index']);
        Route::post('/store', [BasketController::class, 'store']);
        Route::get('/productQty', [BasketController::class, 'productQty']);
        Route::post('/delete/{id}', [BasketController::class, 'delete']);
        Route::post('/decrease', [BasketController::class, 'decrease']);
        Route::post('/increase', [BasketController::class, 'increase']);
    });

    Route::group(['prefix' => 'order'], function () {
        Route::get('/index', [OrderController::class, 'index']);
        Route::post('/store', [OrderController::class, 'store']);
        Route::get('/all-orders', [OrderController::class , 'all_orders']);
        Route::post('/confirm/{id}', [OrderController::class, 'confirmed']);
        Route::post('/ship/{id}', [OrderController::class, 'shipped']);
        Route::post('/deliver/{id}', [OrderController::class, 'delivered']);
        Route::post('/return/{id}', [OrderController::class, 'returned']);
        Route::post('/cancel/{id}', [OrderController::class, 'canceled']);
    });
});


//butun user-ler daxil ola biler
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/register', [AuthController::class, 'register']);
Route::post('/forgot-password', [AuthController::class, 'forgotPassword']);
Route::post('/logout', [AuthController::class, 'logout']);
Route::get('/product', [ProductController::class, 'index']);
Route::get('/product/{id}', [ProductController::class, 'show']);
Route::get('/similarProducts/{id}', [ProductController::class, 'similarProducts']);
Route::get('/publishedProducts', [ProductController::class, 'publishedProducts']);
Route::post('/product/{productId}/addView', [ProductController::class, 'addView']);
Route::get('/product/{productId}/reviews', [ProductController::class, 'reviews']);
Route::get('/product/{productId}/average-rating', [ProductController::class, 'getAverageRating']);
Route::get('/filteredProducts', [ProductController::class, 'filteredProducts']);
Route::get('/type', [TypeController::class, 'index']);
Route::get('/type/{id}', [TypeController::class, 'show']);
Route::get('/category', [CategoryController::class, 'index']);
Route::get('/category/{id}', [CategoryController::class, 'show']);
Route::get('/characteristic', [CharasteristicController::class, 'index']);
Route::get('/characteristic/{id}', [CharasteristicController::class, 'show']);
Route::get('/colorsCount', [ColorController::class, 'selectColorCount']);

//ABOUT PAGE
Route::get('/about/banner', [AboutController::class, 'publishedBanner']);
Route::get('/about/paralax', [AboutController::class, 'publishedParalax']);
Route::get('/about/team-title', [AboutController::class, 'publishedTeamTitle']);
Route::get('/about/team-member', [AboutController::class, 'getTeamMembers']);
Route::get('/about/number-title', [AboutController::class, 'publishedNumberTitle']);
Route::get('/about/number-subtitle', [AboutController::class, 'getNumberSubtitles']);
Route::get('/about-gallery/index', [GalleryController::class, 'index']);

//FAQs
Route::group(['prefix' => 'faqs'], function () {
    Route::post('/publishedFaqs', [FAQController::class, 'publishedFaqs']);
});
Route::group(['prefix' => 'options'], function () {
    Route::get('/', [OptionController::class, 'index']);
    Route::get('/{id}', [OptionController::class, 'show']);
});

//SERVICE PAGE
Route::get('/service/article/title', [ServiceArticleTitleController::class, 'publishedTitle']);
Route::get('/service/articles', [ServiceArticleController::class, 'index']);
Route::get('/service/published-articles', [ServiceArticleController::class, 'articlesOfPublishedTitle']);
Route::get('/service/article/{id}', [ServiceArticleController::class, 'show']);

//SHOP PAGE
Route::get('/shop/exellence/published', [ExellenceServiceController::class, 'published']);
Route::get('/shop/promotion/slider/published', [PromotionSliderController::class, 'published']);
