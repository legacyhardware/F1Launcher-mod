.class public Lcom/wy/f1home/activity/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

.field mGridview:Lcom/wy/f1home/activity/HomeGridView;

.field mGridviewAdapter:Lcom/wy/f1home/activity/HomeActivityAdapter;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/16 v3, 0xf0

    const/16 v4, 0x140

    .line 173
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 175
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string p0, "wuyu"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawableToBitmap bitmaph= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wuyu"

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawableToBitmap bitmapw= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 186
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected enableWallpaperShowing(Z)V
    .locals 5

    if-eqz p1, :cond_1

    .line 138
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "wuyu"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaperDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const-string v2, "wuyu"

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wallpaperDrawable h= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wuyu"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaperDrawable w= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1}, Lcom/wy/f1home/activity/HomeActivity;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/HomeActivity;->BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0, v0}, Lcom/wy/f1home/activity/HomeActivity;->overridePendingTransition(II)V

    .line 132
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    return-void
.end method

.method public initView()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "HomeActivity initView "

    .line 58
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090062

    .line 60
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/activity/HomeGridView;

    iput-object v0, p0, Lcom/wy/f1home/activity/HomeActivity;->mGridview:Lcom/wy/f1home/activity/HomeGridView;

    .line 62
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivity;->mGridview:Lcom/wy/f1home/activity/HomeGridView;

    invoke-virtual {v0, p0}, Lcom/wy/f1home/activity/HomeGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    new-instance v0, Lcom/wy/f1home/activity/HomeActivityAdapter;

    invoke-static {}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getMainMenuAppsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wy/f1home/activity/HomeActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/HomeActivity;->mGridviewAdapter:Lcom/wy/f1home/activity/HomeActivityAdapter;

    .line 66
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivity;->mGridview:Lcom/wy/f1home/activity/HomeGridView;

    iget-object v1, p0, Lcom/wy/f1home/activity/HomeActivity;->mGridviewAdapter:Lcom/wy/f1home/activity/HomeActivityAdapter;

    invoke-virtual {v0, v1}, Lcom/wy/f1home/activity/HomeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivity;->mGridviewAdapter:Lcom/wy/f1home/activity/HomeActivityAdapter;

    invoke-virtual {v0}, Lcom/wy/f1home/activity/HomeActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/wy/f1home/activity/activityUtil;->setStatusBarTransparentColor(Landroid/app/Activity;)V

    const p1, 0x7f0c001c

    .line 49
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/HomeActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeActivity;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "wuyu"

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "(Bean) view.getTag()).mPkgName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wy/f1home/uitl/Bean;

    iget-object p4, p4, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wuyu"

    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "(Bean) view.getTag()).mClsName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wy/f1home/uitl/Bean;

    iget-object p4, p4, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wy/f1home/uitl/Bean;

    iget-object p1, p1, Lcom/wy/f1home/uitl/Bean;->mPkgName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wy/f1home/uitl/Bean;

    iget-object p2, p2, Lcom/wy/f1home/uitl/Bean;->mClsName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/wy/f1home/uitl/PackageInfoUtil;->constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Lcom/wy/f1home/uitl/PackageInfoUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "wuyu"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeActivity onKeyDown keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "wuyu"

    const-string v1, "HomeActivity onResume"

    .line 75
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeActivity;->enableWallpaperShowing(Z)V

    return-void
.end method
