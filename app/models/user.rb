# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :profile

  # 姓名をくっつけてフルネームを返します
  def full_name
    # カバレッジ結果を見やすくするため、ちょっと面倒な書き方をしています。
    # しかも、フツーは苗字がないからって代理文字とか入れないですね…。

    result = ""

    if first_name
      result << first_name
    else
      result << "Foo"
    end

    result << " "

    if last_name
      result << last_name
    else
      result << "Bar"
    end

    result
  end
end
