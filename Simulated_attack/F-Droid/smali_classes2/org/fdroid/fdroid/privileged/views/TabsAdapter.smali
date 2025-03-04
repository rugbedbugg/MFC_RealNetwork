.class Lorg/fdroid/fdroid/privileged/views/TabsAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/privileged/views/TabsAdapter$DummyTabFactory;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private onTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final tabHost:Landroid/widget/TabHost;

.field private final tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final tempRect:Landroid/graphics/Rect;

.field private final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabs:Ljava/util/List;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabHost:Landroid/widget/TabHost;

    iput-object p3, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 75
    invoke-virtual {p2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 76
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 77
    invoke-virtual {p3, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V
    .locals 2

    .line 81
    new-instance v0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter$DummyTabFactory;

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/privileged/views/TabsAdapter$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabs:Ljava/util/List;

    .line 82
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabHost:Landroid/widget/TabHost;

    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 84
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabs:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabs:Ljava/util/List;

    .line 95
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabHost:Landroid/widget/TabHost;

    .line 134
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v2, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabHost:Landroid/widget/TabHost;

    .line 137
    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 141
    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tempRect:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabs:Ljava/util/List;

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 147
    instance-of v0, p1, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;

    invoke-virtual {p1}, Lorg/fdroid/fdroid/privileged/views/CaffeinatedScrollView;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->tabHost:Landroid/widget/TabHost;

    .line 116
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 117
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->onTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/TabsAdapter;->onTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method
